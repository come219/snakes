import pygame
import random

# Initialize pygame
pygame.init()

# Set the window size
WINDOW_SIZE = (600, 600)

# Create the window
screen = pygame.display.set_mode(WINDOW_SIZE)

# Set the title of the window
pygame.display.set_caption('Snake')

# Set the colors
BLACK = (0, 0, 0)
WHITE = (255, 255, 255)
GREEN = (0, 255, 0)

# Set the snake's starting position and size
snake_pos = [100, 50]
snake_body = [[100, 50], [90, 50], [80, 50]]

# Set the food's starting position
food_pos = [random.randrange(1, (WINDOW_SIZE[0]//10)) * 10, random.randrange(1, (WINDOW_SIZE[1]//10)) * 10]
food_spawn = True

# Set the direction the snake is moving
direction = 'RIGHT'
change_to = direction

# Set the score to 0
score = 0

# Set the clock
clock = pygame.time.Clock()

# Set the font
font = pygame.font.SysFont('times new roman', 20)

# Set the font color
font_color = (255, 255, 255)

# Set the game over flag to False
game_over = False

while not game_over:
    for event in pygame.event.get():
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_UP:
                change_to = 'UP'
            if event.key == pygame.K_DOWN:
                change_to = 'DOWN'
            if event.key == pygame.K_LEFT:
                change_to = 'LEFT'
            if event.key == pygame.K_RIGHT:
                change_to = 'RIGHT'

        if event.type == pygame.QUIT:
            game_over = True

    # If the direction is not opposite to the current direction, set the direction to the new direction
    if change_to == 'UP' and direction != 'DOWN':
        direction = 'UP'
    if change_to == 'DOWN' and direction != 'UP':
        direction = 'DOWN'
    if change_to == 'LEFT' and direction != 'RIGHT':
        direction = 'LEFT'
    if change_to == 'RIGHT' and direction != 'LEFT':
        direction = 'RIGHT'

    # Move the snake
    if direction == 'UP':
        snake_pos[1] -= 10
    if direction == 'DOWN':
        snake_pos[1] += 10
    if direction == 'LEFT':
        snake_pos[0] -= 10
    if direction == 'RIGHT':
        snake_pos[0] += 10

    # Add the new position of the snake to the snake body
    snake_body.insert(0, list(snake_pos))

    # If the snake has not eaten food, remove the last element of the snake body
    if snake_pos[0] == food_pos[0] and snake_pos[1] == food_pos[1]:
    score += 1
    food_spawn = False
else:
    snake_body.pop()

# If food needs to be spawned, set the food position to a random position on the screen
if not food_spawn:
    food_pos = [random.randrange(1, (WINDOW_SIZE[0]//10)) * 10, random.randrange(1, (WINDOW_SIZE[1]//10)) * 10]
food_spawn = True

# Draw the background
screen.fill(BLACK)

# Draw the snake
for pos in snake_body:
    pygame.draw.rect(screen, GREEN, pygame.Rect(pos[0], pos[1], 10, 10))

# Draw the food
pygame.draw.rect(screen, WHITE, pygame.Rect(food_pos[0], food_pos[1], 10, 10))

# Check if the snake has collided with the boundaries
if snake_pos[0] < 0 or snake_pos[0] > WINDOW_SIZE[0]-10:
    game_over = True
if snake_pos[1] < 0 or snake_pos[1] > WINDOW_SIZE[1]-10:
    game_over = True

# Check if the snake has collided with itself
for block in snake_body[1:]:
    if snake_pos[0] == block[0] and snake_pos[1] == block[1]:
        game_over = True

# Draw the score
score_text = font.render('Score: ' + str(score), True, font_color)
screen.blit(score_text, (10, 10))

# Update the display
pygame.display.update()

# Set the frame rate to 10 fps
clock.tick(10)


#Quit pygame
pygame.quit()




