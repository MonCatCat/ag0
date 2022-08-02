package main

import (
	"os"

	"github.com/cosmos/cosmos-sdk/server"
	svrcmd "github.com/cosmos/cosmos-sdk/server/cmd"
	sdk "github.com/cosmos/cosmos-sdk/types"

	"github.com/cosmos/gaia/v7/agoric"
	app "github.com/cosmos/gaia/v7/app"
	"github.com/cosmos/gaia/v7/cmd/gaiad/cmd"
)

func main() {

	config := sdk.GetConfig()
	agoric.SetAgoricConfig(config)
	config.Seal()

	rootCmd, _ := cmd.NewRootCmd()

	if err := svrcmd.Execute(rootCmd, app.DefaultNodeHome); err != nil {
		switch e := err.(type) {
		case server.ErrorCode:
			os.Exit(e.Code)

		default:
			os.Exit(1)
		}
	}
}
