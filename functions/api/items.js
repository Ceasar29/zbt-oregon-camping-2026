function json(data, init = {}) {
  return Response.json(data, {
    ...init,
    headers: {
      "Cache-Control": "no-store",
      ...(init.headers || {})
    }
  });
}

function cleanName(value) {
  return String(value || "")
    .replace(/\s+/g, " ")
    .trim()
    .slice(0, 80);
}

export async function onRequestGet({ env }) {
  const result = await env.DB.prepare(
    `SELECT id, category, item, detail, claimed_by, sort_order, updated_at
     FROM signup_items
     ORDER BY category, sort_order, item`
  ).all();

  return json({ items: result.results || [] });
}

export async function onRequestPost({ request, env }) {
  let body;
  try {
    body = await request.json();
  } catch {
    return json({ error: "Invalid JSON" }, { status: 400 });
  }

  const id = String(body.id || "").trim();
  const claimedBy = cleanName(body.claimed_by);

  if (!id) {
    return json({ error: "Missing item id" }, { status: 400 });
  }

  const result = await env.DB.prepare(
    `UPDATE signup_items
     SET claimed_by = ?, updated_at = CURRENT_TIMESTAMP
     WHERE id = ?`
  ).bind(claimedBy, id).run();

  if (!result.meta || result.meta.changes !== 1) {
    return json({ error: "Item not found" }, { status: 404 });
  }

  const item = await env.DB.prepare(
    `SELECT id, category, item, detail, claimed_by, sort_order, updated_at
     FROM signup_items
     WHERE id = ?`
  ).bind(id).first();

  return json({ item });
}
