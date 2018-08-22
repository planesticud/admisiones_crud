package routers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context/param"
)

func init() {

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:AdmisionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:AdmisionController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:AdmisionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:AdmisionController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:AdmisionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:AdmisionController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:AdmisionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:AdmisionController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:AdmisionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:AdmisionController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:EstadoAdmisionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:EstadoAdmisionController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:EstadoAdmisionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:EstadoAdmisionController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:EstadoAdmisionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:EstadoAdmisionController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:EstadoAdmisionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:EstadoAdmisionController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:EstadoAdmisionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:EstadoAdmisionController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:LineaInvestigacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:LineaInvestigacionController"],
		beego.ControllerComments{
			Method: "Post",
			Router: `/`,
			AllowHTTPMethods: []string{"post"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:LineaInvestigacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:LineaInvestigacionController"],
		beego.ControllerComments{
			Method: "GetAll",
			Router: `/`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:LineaInvestigacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:LineaInvestigacionController"],
		beego.ControllerComments{
			Method: "GetOne",
			Router: `/:id`,
			AllowHTTPMethods: []string{"get"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:LineaInvestigacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:LineaInvestigacionController"],
		beego.ControllerComments{
			Method: "Put",
			Router: `/:id`,
			AllowHTTPMethods: []string{"put"},
			MethodParams: param.Make(),
			Params: nil})

	beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:LineaInvestigacionController"] = append(beego.GlobalControllerRouter["github.com/udistrital/admisiones_crud/controllers:LineaInvestigacionController"],
		beego.ControllerComments{
			Method: "Delete",
			Router: `/:id`,
			AllowHTTPMethods: []string{"delete"},
			MethodParams: param.Make(),
			Params: nil})

}