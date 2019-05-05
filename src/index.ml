open DomUtil

(** [App.t] is the interface exposed to JavaScript as the [window.App] object. *)
module App = struct
  type t = {
    test: unit -> unit;
    onload: unit -> unit;
  } [@@bs.deriving abstract]
end

(* Instantiate and bind [window.App]. *)
let () =
  Js.Dict.set window "App" @@ App.t
    ~test:(fun () ->
      Js.log "Hello there."
    )
    ~onload:(fun () ->
      let line_form = Document.getElementById "line-form" in
      let console_log = Document.getElementById "log" in
      Element.addEventListener line_form "submit" (fun event ->
        Js.log "hi" ;
        console_log |. Element.innerHTMLSet "hi" ;
        Event.preventDefault event ;
      )
    )

let () =
  Js.log "In BuckleScript..." ;
  Js.log @@ "Hello, " ^ Util.english_join ["Tom"; "Dick"; "Harry"] ;
