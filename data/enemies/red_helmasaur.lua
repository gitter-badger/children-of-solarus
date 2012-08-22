local enemy = ...

function enemy:on_created()

  self:set_life(4)
  self:set_damage(12)
  self:create_sprite("enemies/red_helmasaur")
  self:set_size(16, 16)
  self:set_origin(8, 13)
end

function enemy:on_restarted()

  local m = sol.movement.create("path_finding")
  m:set_speed(32)
  self:start_movement(m)
end

function enemy:on_movement_changed()

  local m = self:get_movement()
  local direction4 = m:get_direction4()
  local sprite = self:get_sprite()
  sprite:set_direction(direction4)
end

