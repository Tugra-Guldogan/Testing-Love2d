Player =  Object:extend()


function Player:new()
    self.x = 100
    self.y = 50
    self.speed = 80
end


function Player:update(dt)
    if love.keyboard.isDown("right") then
        self.x = self.x + self.speed * dt
    elseif love.keyboard.isDown("left") then
        self.x = self.x - self.speed * dt
    end
    
    if love.keyboard.isDown("up") then
        self.y = self.y - self.speed * dt
    elseif love.keyboard.isDown("down") then
        self.y = self.y + self.speed * dt
    end
end


function Player:draw()
    love.graphics.rectangle("fill", self.x, self.y, 100, 75)
end
