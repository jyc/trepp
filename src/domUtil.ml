module Event = struct
  type t = Dom.event

  external preventDefault : t -> unit = "preventDefault" [@@bs.send]
  external stopPropagation : t -> unit = "stopPropagation" [@@bs.send]
end

module Element = struct
  type t = private {
    mutable innerHTML: string;
  } [@@bs.deriving abstract]

  external addEventListener : t -> string -> (Event.t -> unit) -> unit = "addEventListener" [@@bs.send]
end

module Document = struct
  type t = Dom.document
  external x : t = "document" [@@bs.val]

  external _getElementById : t -> string -> Element.t = "getElementById" [@@bs.send]
  let getElementById = _getElementById x
end

external window : 'a Js.Dict.t = "window" [@@bs.val]
