extends Control

func _ready():
	WebSDK.ad_closed.connect(ad_closed)
	WebSDK.ad_error.connect(ad_error)
	WebSDK.ad_started.connect(ad_started)
	WebSDK.reward_added.connect(reward_added)


func _on_show_ad_pressed():
	WebSDK.show_ad()


func _on_show_reward_ad_pressed():
	WebSDK.show_rewarded_ad()


func _on_show_banner_pressed():
	WebSDK.show_banner()


func _on_hide_banner_pressed():
	WebSDK.hide_banner()


func _on_get_language_pressed():
	var lang = WebSDK.get_language()
	print("language:", lang)
	


func _on_get_type_device_pressed():
	var type = WebSDK.get_type_device()
	print("device type:", type)


func _on_set_yandex_leaderboard_pressed():
	var name_leaderboard :String = $VBoxContainer/HBoxContainer2/leaderboard.text
	var score: int = int($VBoxContainer/HBoxContainer2/score.text)
	WebSDK.set_yandex_leaderboard(name_leaderboard, score)
	
func _on_yandex_ready_pressed():
	WebSDK.yandex_ready()

func ad_closed():
	print("ad_closed")
	
func ad_error():
	print("ad_error")
	
func ad_started():
	print("ad_started")
	
func reward_added():
	print("reward_added")


var leaderboard_info

func _on_get_yandex_leaderboard_info_pressed():
	WebSDK.leaderboard_info_recieved.connect(getting_leaderboard_info)
	var name_leaderboard :String = $VBoxContainer/HBoxContainer/leaderboard.text
	WebSDK.get_leaderboard_info(name_leaderboard)
	
	
func getting_leaderboard_info(info):
	leaderboard_info = info
	print(info)



func _on_happytime_pressed():
	WebSDK.crazy_happytime()


func _on_start_gameplay_pressed():
	WebSDK.crazy_start_gameplay()


func _on_stop_gameplay_pressed():
	WebSDK.crazy_stop_gameplay()


func _on_start_loading_pressed():
	WebSDK.crazy_start_loading()


func _on_stop_loading_pressed():
	WebSDK.crazy_stop_loading()
