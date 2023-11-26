extends Node

var MusicMenu = true
var MusicGame = true
var MusicInterface = true

func change_state(var state):
	MusicMenu = state

func change_state_game(var state):
	MusicGame = state

func change_state_interface(var state):
	MusicInterface = state

func state():
	return MusicMenu

func stateGame():
	return MusicGame

func stateInterface():
	return MusicInterface
