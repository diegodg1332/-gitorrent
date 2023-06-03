from flask import Flask, jsonify, request

app = Flask(__name__)

if __name__ == '_main:':
    app.run(debug=True, port=8000)


@app.route('/snake', methods=['GET'])

def snake_game():
    white = (255, 255, 255)
    yellow = (255, 255, 102)
    black = (0, 0, 0)
    red = (213, 50, 80)
    green = (0, 255, 0)
    blue = (50, 153, 213)

    dis_width = 600
    dis_height = 400

    snake_block = 10
    snake_speed = 15

    score_font = pygame.font.SysFont("comicsansms", 35)

    def Your_score(score):
        value = score_font.render("Your Score: " + str(score), True, yellow)
        return value.get_rect()

    def our_snake(snake_block, snake_list):
        rects = []
        for x in snake_list:
            rects.append(pygame.Rect(x[0], x[1], snake_block, snake_block))
        return rects

    def gameLoop():
        game_over = False
        game_close = False

        x1 = dis_width / 2
        y1 = dis_height / 2

        x1_change = 0
        y1_change = 0

        snake_List = []
        Length_of_snake = 1

        foodx = round(random.randrange(0, dis_width - snake_block) / 10.0) * 10.0
        foody = round(random.randrange(0, dis_height - snake_block) / 10.0) * 10.0

        while not game_over:

            while game_close == True:
                game_over = True

            for event in pygame.event.get():
                if event.type == pygame.QUIT:
                    game_over = True
                if event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_LEFT:
                        x1_change = -snake_block
                        y1_change = 0
                    elif event.key == pygame.K_RIGHT:
                        x1_change = snake_block
                        y1_change = 0
                    elif event.key == pygame.K_UP:
                        y1_change = -snake_block
                        x1_change = 0
                    elif event.key == pygame.K_DOWN:
                        y1_change = snake_block
                        x1_change = 0

            if x1 >= dis_width or x1 < 0 or y1 >= dis_height or y1 < 0:
                game_over = True
            x1 += x1_change
            y1 += y1_change
            dis.fill(blue)
            pygame.draw.rect(dis, green, [foodx, foody, snake_block, snake_block])
            snake_Head = []
            snake_Head.append(x1)
            snake_Head.append(y1)
            snake_List.append(snake_Head)
            if len(snake_List) > Length_of_snake:
                del snake_List[0]

            for x in snake_List[:-1]:
                if x == snake_Head:
                    game_over = True

            snake_rects = our_snake(snake_block, snake_List)

            response = {
                'snake_rects': [rect.__dict__ for rect in snake_rects],
                'food_rect': pygame.Rect(foodx, foody, snake_block, snake_block).__dict__,
                'score': Length_of_snake - 1
            }

            return jsonify(response)

            if x1 == foodx and y1 == foody:
                foodx = round(random.randrange(0, dis_width - snake_block) / 10.0) * 10.0
                foody = round(random.randrange(0, dis_height - snake_block) / 10.0) * 10.0
                Length_of_snake += 1

            clock.tick(snake_speed)

    pygame.quit()
    quit()


if __name__ == '__main__':
    app.run()
