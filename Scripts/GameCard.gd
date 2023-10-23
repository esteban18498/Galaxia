extends Control

#Enemy
#onredy var arwork_card1_enemyC = $EnemyCraturesBoard/Card1_EnemyC/Artwork
@onready var arwork_card1_enemyC = $EnemyCraturesBoard/Card1_EnemyC/Artwork
@onready var cardBase_card1_enemyC = $EnemyCraturesBoard/Card1_EnemyC/CardBase
@onready var cost_card1_enemyC = $EnemyCraturesBoard/Card1_EnemyC/Cost
@onready var name_card1_enemyC = $EnemyCraturesBoard/Card1_EnemyC/Name
@onready var desctrip_card1_enemyC = $EnemyCraturesBoard/Card1_EnemyC/Descripcion

#Player
#onredy var arwork_card1_enemyC = $EnemyCraturesBoard/Card1_EnemyC/Artwork
@onready var arwork_card1_playerC = $PlayerCreaturesBoard/Card1_PleyerC/Artwork
@onready var cardBase_card1_playerC = $PlayerCreaturesBoard/Card1_PleyerC/CardBase
@onready var cost_card1_playerC = $PlayerCreaturesBoard/Card1_PleyerC/Cost
@onready var name_card1_playerC = $PlayerCreaturesBoard/Card1_PleyerC/Name
@onready var desctrip_card1_playerC = $PlayerCreaturesBoard/Card1_PleyerC/Descripcion

# Called when the node enters the scene tree for the first time.
func _ready():
	loading_scriptableObjects_and_update()
	pass

func loading_scriptableObjects_and_update():
	var card1_enemC = load("res://ScriptibleObjects/Disparos/Disparo1.tres")
	var card1_playerC = load("res://ScriptibleObjects/Naves/carta3.tres")
	
	#enemy
	arwork_card1_enemyC.texture = card1_enemC.artwork
	cardBase_card1_enemyC.texture = card1_enemC.backgroud_texture
	#cost_card1_enemyC.text = str(card1_enemC.cost)
	name_card1_enemyC.text = card1_enemC.name
	desctrip_card1_enemyC.text = card1_enemC.description
	
	#player
	arwork_card1_playerC.texture = card1_playerC.artwork
	cardBase_card1_playerC.texture = card1_playerC.backgroud_texture
	#cost_card1_playerC.text = str(card1_playerC.cost)
	name_card1_playerC.text = card1_playerC.name
	desctrip_card1_playerC.text = card1_playerC.description
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
