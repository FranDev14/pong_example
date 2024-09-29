extends Sprite2D

var score := [0, 0] # 0: Player, 1: CPU
const PADDLE_SPEED : int = 500

func _on_ball_time_timeout():
    $Ball.new_ball()



func _on_score_left_body_entered(body):
    score[1] += 1
    $HUD/CPUScore.text = str(score[1])
    $BallTime.start()

func _on_score_right_body_entered(body):
    score[0] += 1
    $HUD/PlayerScore.text = str(score[0])
    $BallTime.start()
