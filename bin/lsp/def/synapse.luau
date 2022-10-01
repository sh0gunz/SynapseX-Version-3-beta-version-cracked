-- Synapse X Luau type definitions
-- Generated 2022/08/12

type generic_function = (...any) -> ...any

type ENV = {
	ToastType: {
		None: number,
		Success: number,
		Warning: number,
		Error: number,
		Info: number
	},
	RenderStyleOption: {
		Alpha: number,
		WindowPadding: number,
		WindowRounding: number,
		WindowBorderSize: number,
		WindowMinSize: number,
		WindowTitleAlign: number,
		ChildRounding: number,
		ChildBorderSize: number,
		PopupRounding: number,
		PopupBorderSize: number,
		FramePadding: number,
		FrameRounding: number,
		FrameBorderSize: number,
		ItemSpacing: number,
		ItemInnerSpacing: number,
		IndentSpacing: number,
		CellPadding: number,
		ScrollbarSize: number,
		ScrollbarRounding: number,
		GrabMinSize: number,
		GrabRounding: number,
		TabRounding: number,
		ButtonTextAlign: number,
		SelectableTextAlign: number
	},
	RenderColorOption: {
		Text: number,
		TextDisabled: number,
		WindowBg: number,
		ChildBg: number,
		PopupBg: number,
		Border: number,
		BorderShadow: number,
		FrameBg: number,
		FrameBgHovered: number,
		FrameBgActive: number,
		TitleBg: number,
		TitleBgActive: number,
		TitleBgCollapsed: number,
		MenuBarBg: number,
		ScrollbarBg: number,
		ScrollbarGrab: number,
		ScrollbarGrabHovered: number,
		ScrollbarGrabActive: number,
		CheckMark: number,
		SliderGrab: number,
		SliderGrabActive: number,
		Button: number,
		ButtonHovered: number,
		ButtonActive: number,
		Header: number,
		HeaderHovered: number,
		HeaderActive: number,
		Separator: number,
		SeparatorHovered: number,
		SeparatorActive: number,
		ResizeGrip: number,
		ResizeGripHovered: number,
		ResizeGripActive: number,
		Tab: number,
		TabHovered: number,
		TabActive: number,
		TabUnfocused: number,
		TabUnfocusedActive: number,
		DockingPreview: number,
		DockingEmptyBg: number,
		PlotLines: number,
		PlotLinesHovered: number,
		PlotHistogram: number,
		PlotHistogramHovered: number,
		TableHeaderBg: number,
		TableBorderStrong: number,
		TableBorderLight: number,
		TableRowBg: number,
		TableRowBgAlt: number,
		TextSelectedBg: number,
		DragDropTarget: number,
		NavHighlight: number,
		NavWindowingHighlight: number,
		NavWindowingDimBg: number,
		ModalWindowDimBg: number
	},
	XAlignment: {
		Left: number,
		Right: number,
		Center: number
	},
	YAlignment: {
		Top: number,
		Bottom: number,
		Center: number
	},
	CFrameRotationType: {
		CameraRelative: number,
		TargetRelative: number,
		Ignore: number
	},
	UserEncryptionMode: {
		SynAccount: number,
		WindowsAccount: number,
		WindowsMachine: number
	},
	PasswordDerivationMode: {
		Interactive: number,
		Moderate: number,
		Sensitive: number
	},
	isnetworkowner: (part: BasePart) -> boolean,
	iswindowactive: () -> boolean,
	lockwindow: () -> (),
	unlockwindow: () -> (),
	iswindowlocked: () -> boolean,
	keypress: (key: KeyCode) -> (),
	keyrelease: (key: KeyCode) -> (),
	keyclick: (key: KeyCode) -> (),
	mouse1press: (x: number, y: number) -> (),
	mouse1release: (x: number, y: number) -> (),
	mouse1click: () -> (),
	mouse2press: (x: number, y: number) -> (),
	mouse2release: (x: number, y: number) -> (),
	mouse2click: () -> (),
	mousescroll: (forward: boolean, x: number, y: number) -> (),
	mousemoverel: (x: number, y: number, internal: boolean?) -> (),
	mousemoveabs: (x: number, y: number, internal: boolean?) -> (),
	iskeydown: (key: number) -> boolean,
	iskeytoggled: (key: number) -> boolean,
	getmousestate: () -> boolean,
	setmousestate: (new_state: boolean) -> (),
	getgenv: () -> table,
	getrenv: () -> table,
	getreg: () -> table,
	getgc: (include_tables: boolean?) -> table,
	filtergc: (type: string, options: table, return_one: boolean?) -> nil | any,
	getinstances: () -> table,
	getnilinstances: () -> table,
	getscripts: () -> table,
	getloadedmodules: () -> table,
	fireclickdetector: (target: Instance) -> (),
	fireproximityprompt: (target: Instance) -> (),
	firetouchinterest: (part: Instance, to_touch: Instance, toggle: boolean) -> (),
	getrawmetatable: (object: any) -> table | nil,
	setrawmetatable: (object: any, target: table) -> (),
	setreadonly: (table: table, value: boolean) -> (),
	setuntouched: (table: table, value: boolean) -> (),
	isuntouched: (table: table) -> boolean,
	makewritable: (table: table) -> (),
	makereadonly: (table: table) -> (),
	isreadonly: (table: table) -> boolean,
	setclipboard: (data: string | number | Instance | table) -> boolean,
	setfflag: (fflag: string, value: string) -> boolean,
	identifyexecutor: () -> (string, string),
	unlockmodulescript: (module: ModuleScript) -> (),
	require: (module: ModuleScript) -> any,
	messagebox: (text: string, caption: string?, type: number?) -> number,
	setwindowtitle: (text: string) -> (),
	setwindowicon: (data: string) -> (),
	gethui: () -> Instance,
	createuitab: (title: string, contents: string, icon: string?) -> (),
	newtable: (narray: number, nhash: number) -> table,
	cloneref: (instance: Instance) -> Instance,
	rconsoletop: (should_be_top: boolean) -> (),
	rconsoleprint: (data: string, async: boolean?, escape: boolean?) -> (),
	rconsoleinfo: (data: string, async: boolean?) -> (),
	rconsolewarn: (data: string, async: boolean?) -> (),
	rconsoleerr: (data: string, async: boolean?) -> (),
	rconsoleclear: () -> (),
	rconsolename: () -> (),
	rconsoleinput: () -> string,
	printconsole: (data: string, r: number, g: number, b: number) -> (),
	clearconsole: () -> (),
	loadstring: (source: string, chunk_name: string?) -> generic_function,
	checkcaller: () -> boolean,
	checkcallstack: (type: string, level: number?) -> boolean,
	issynapsefunction: (f: generic_function) -> boolean,
	islclosure: (f: generic_function) -> boolean,
	decompile: (target: variant<generic_function, LuaSourceContainer>) -> string,
	getscriptthread: (script: Instance) -> thread,
	getsenv: (script: Instance) -> table,
	getscriptfunction: (script: Instance) -> generic_function,
	getscripthash: (script: LuaSourceContainer) -> string,
	getfunctionhash: (script: generic_function) -> string,
	getscriptname: (script: Instance) -> string,
	getscriptbytecode: (target: variant<generic_function, LuaSourceContainer>) -> string,
	getcallingscript: () -> variant<Instance, nil>,
	issynapsethread: (thread: thread) -> boolean,
	getboundingbox: (parts: table, orientation: CFrame?) -> (CFrame, Vector3),
	worldtoscreen: (points: table, offset: Vector3?) -> table,
	getfilter: (filter: FilterBase, original_function: generic_function, filter_function: generic_function) -> generic_function,
	setcliprect: (z_index: number, rect: Rect?) -> (),
	setfpscap: (cap: number) -> (),
	getconnections: (signal: RBXScriptSignal, context: integer?) -> table,
	firesignal: (signal: RBXScriptSignal, ...any) -> (),
	replicatesignal: (signal: RBXScriptSignal, ...any) -> (),
	cansignalreplicate: (signal: RBXScriptSignal) -> boolean,
	getsignalarguments: (signal: RBXScriptSignal) -> table,
	isconnectionenabled: (connection: RBXScriptConnection) -> boolean,
	setconnectionenabled: (connection: RBXScriptConnection, enable: boolean) -> (),
	isluaconnection: (connection: RBXScriptConnection) -> boolean,
	iswaitingconnection: (connection: RBXScriptConnection) -> boolean,
	getconnectionfunction: (connection: RBXScriptConnection, return_raw: boolean?) -> generic_function,
	getconnectionthread: (connection: RBXScriptConnection) -> thread,
	isgamescriptconnection: (connection: RBXScriptConnection) -> boolean,
	readfile: (path: string) -> string,
	readfileasync: (path: string) -> string,
	writefile: (path: string, contents: string) -> (),
	writefileasync: (path: string, contents: string) -> (),
	appendfile: (path: string, contents: string) -> (),
	appendfileasync: (path: string, contents: string) -> (),
	loadfile: (path: string, contents: string) -> (generic_function?, string?),
	listfiles: (folder: string?) -> table,
	isfile: (path: string) -> boolean,
	isfolder: (path: string) -> boolean,
	makefolder: (path: string) -> boolean,
	delfolder: (path: string) -> (),
	delfile: (path: string) -> (),
	getsynasset: (path: string) -> string,
	saveinstance: (instance: Instance | table, options: table?) -> boolean,
	saveplace: (options: table?) -> boolean,
	setstackhidden: (closure: generic_function, hidden: boolean?) -> (),
	newcclosure: (closure: generic_function, name: string?) -> generic_function,
	clonefunction: (to_clone: generic_function) -> generic_function,
	hookfunction: (to_hook: generic_function, hook: generic_function, filter: Filter?) -> generic_function,
	hookproto: (to_hook: ProtoProxy, hook: generic_function) -> (),
	hookmetamethod: (to_hook: userdata, metamethod: string, hook: generic_function, arg_guard: boolean?) -> (),
	restorefunction: (to_restore: closure) -> (),
	restoreproto: (to_restore: ProtoProxy) -> (),
	hooksignal: (signal: RBXScriptSignal, callback: generic_function) -> (),
	unhooksignal: (signal: RBXScriptSignal) -> (),
	issignalhooked: (signal: RBXScriptSignal) -> (),
	setscriptable: (instance: Instance, property_name: string, scriptable: boolean) -> boolean,
	gethiddenproperty: (instance: Instance, property_name: string) -> any,
	sethiddenproperty: (instance: Instance, property_name: string, value: any) -> (),
	getproperties: (instance: Instance) -> table,
	gethiddenproperties: (instance: Instance) -> table,
	getpcdprop: (instance: TriangleMeshPart) -> (string, string),
	getcallbackmember: (instance: Instance, property: string) -> generic_function,
	geteventmember: (instance: Instance, event_name: string) -> RBXScriptSignal,
	getrendersteppedlist: () -> table,
	syn: {
		queue_on_teleport: (script: string) -> (),
		clear_teleport_queue: () -> (),
		get_thread_identity: () -> number,
		set_thread_identity: (identity: number) -> (),
		protect_gui: (target: Instance) -> (),
		unprotect_gui: (target: Instance) -> (),
		trampoline_call: (target: generic_function, call_stack: table, thread_options: table, ...any) -> (boolean, ...any | string),
		toast_notification: (options: table) -> (),
		request: (params: table) -> table,
		crypt: {
			encrypt: (data: string, key: string, additional_data: string?) -> string,
			decrypt: (ciphertext: string, key: string, additional_data: string?) -> string,
			hash: (data: string, key: string?) -> string,
			hmac: (data: string, key: string) -> string,
			random: (len: number) -> string,
			base64: {
				encode: (input: string) -> string,
				decode: (input: string) -> string
			},
			hex: {
				encode: (input: string) -> string,
				decode: (input: string) -> string
			},
			lz4: {
				compress: (data: string) -> string
			},
			derive: {
				key: (len: number, key: string, sub_key_id: number, context: string) -> string,
				password: (len: number, password: string, salt: string, mode: PasswordDerivationMode) -> string
			},
			user: {
				encrypt: (data: string, mode: UserEncryptionMode, key: string?) -> string,
				decrypt: (ciphertext: string, key: string?) -> string,
				sign: (data: string) -> string,
				verify: (data: string, signature: string) -> boolean,
				prompt: {
					encrypt: (data: string, mode: UserEncryptionMode, key: string?) -> string,
					decrypt: (ciphertext: string, key: string?) -> string,
					sign: (data: string) -> string,
					verify: (data: string, signature: string) -> boolean
				}
			},
			seal: {
				keygen: () -> (string, string),
				derive: (key: string) -> (string, string),
				encrypt: (plaintext: string, public_key: string) -> string,
				decrypt: (ciphertext: string, public_key: string, secret_key: string) -> string
			},
			sign: {
				keygen: () -> (string, string),
				derive: (key: string) -> (string, string),
				create: (data: string, secret_key: string) -> string,
				open: (data: string, public_key: string) -> string,
				detached: {
					create: (data: string, secret_key: string) -> string,
					verify: (data: string, signature: string, public_key: string) -> boolean
				}
			},
			custom: {
				encrypt: (cipher: string, data: string, key: string, iv: string) -> string,
				decrypt: (cipher: string, data: string, key: string, iv: string) -> string,
				hash: (cipher: string, data: string) -> string,
				hmac: (cipher: string, data: string, key: string) -> string
			},
			url: {
				encode: (data: string) -> string,
				decode: (data: string) -> string
			}
		},
		oth: {
			hook: (target: generic_function, hook: generic_function) -> generic_function,
			unhook: (target: generic_function, hook_or_callback: generic_function?) -> boolean,
			get_root_callback: () -> generic_function,
			is_hook_thread: () -> boolean
		}
	},
	Drawing: {
		Fonts: {
			UI: number,
			System: number,
			Plex: number,
			Monospace: number
		},
		new: (type_name: string) -> any
	},
	DrawingImmediate: {
		Line: (p1: Vector2, p2: Vector2, color: Color3, opacity: number, thickness: number) -> (),
		Circle: (center: Vector2, radius: number, color: Color3, opacity: number, num_sides: number, thickness: number) -> (),
		FilledCircle: (center: Vector2, radius: number, color: Color3, num_sides: number, opacity: number) -> (),
		Triangle: (p1: Vector2, p2: Vector2, p3: Vector3, color: Color3, opacity: number, thickness: number) -> (),
		FilledTriangle: (p1: Vector2, p2: Vector2, p3: Vector3, color: Color3, opacity: number) -> (),
		Rectangle: (top_left: Vector2, size: Vector2, color: Color3, opacity: number, rounding: number, thickness: number) -> (),
		FilledRectangle: (top_left: Vector2, size: Vector2, color: Color3, opacity: number, rounding: number) -> (),
		Quad: (p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, color: Color3, opacity: number, thickness: number) -> (),
		FilledQuad: (p1: Vector2, p2: Vector2, p3: Vector2, p4: Vector2, color: Color3, opacity: number) -> (),
		Text: (position: Vector2, font: Font, font_size: number, color: Color3, opacity: number, text: string, center: boolean) -> (),
		OutlinedText: (position: Vector2, font: Font, font_size: number, color: Color3, opacity: number, outline_color: Color3, outline_opacity: number, text: string, center: boolean) -> (),
		GetPaint: (z_index: number) -> SynSignal
	},
	bit: {
		badd: (...number) -> number,
		bsub: (...number) -> number,
		bmul: (...number) -> number,
		bdiv: (...number) -> number,
		band: (...number) -> number,
		bor: (...number) -> number,
		bxor: (...number) -> number,
		bnot: (...number) -> number,
		lshift: (value: number, n: number) -> number,
		rshift: (value: number, n: number) -> number,
		arshift: (value: number, n: number) -> number,
		rol: (value: number, n: number) -> number,
		ror: (value: number, n: number) -> number,
		bpopcount: (value: number) -> number,
		bswap: (value: number) -> number,
		tohex: (value: number, nibbles: number?) -> number,
		tobit: (value: number) -> number
	},
	debug: {
		validlevel: (level: number, t: thread?) -> boolean,
		getcallstack: (t: thread?) -> table,
		getprotos: (f: generic_function | number | ProtoProxy) -> table,
		getproto: (f: generic_function | number | ProtoProxy, index: number?, activated: boolean?) -> table | ProtoProxy,
		getstack: (level: number, index: number?) -> any,
		setstack: (level: number, index: number, value: any) -> (),
		getupvalues: (fi: generic_function | number) -> table,
		getupvalue: (fi: generic_function | number, index: number) -> any,
		setupvalue: (fi: generic_function | number, index: number, value: any) -> (),
		getconstants: (f: generic_function | number | ProtoProxy, pseudo_indices: boolean?) -> table,
		getconstant: (f: generic_function | number | ProtoProxy, index: number) -> any,
		setconstant: (f: generic_function | number | ProtoProxy, index: number, value: any, pseudo_indices: boolean?) -> any,
		getmetatable: (t: table) -> table,
		setmetatable: (t: table, mt: table) -> (),
		getregistry: () -> table
	},
	RenderWindow: {
		new: (window_name: string) -> RenderWindow
	},
	Duration: {
		TimeSinceEpoch: () -> Duration,
		FromNanoseconds: (nanoseconds: number) -> Duration,
		FromMicroseconds: (microseconds: number) -> Duration,
		FromMilliseconds: (milliseconds: number) -> Duration,
		FromSeconds: (seconds: number) -> Duration,
		FromMinutes: (minutes: number) -> Duration,
		FromHours: (hours: number) -> Duration,
		FromDays: (days: number) -> Duration,
		FromMonths: (months: number) -> Duration,
		FromYears: (years: number) -> Duration
	},
	Stopwatch: {
		new: () -> Stopwatch
	},
	Timer: {
		new: () -> Timer
	},
	NotFilter: {
		new: (target: FilterBase) -> NotFilter
	},
	AnyFilter: {
		new: (filters: table?) -> AnyFilter
	},
	AllFilter: {
		new: (filters: table?) -> AllFilter
	},
	TypeFilter: {
		new: (index: number, type: string) -> TypeFilter
	},
	NamecallFilter: {
		new: (method: string) -> NamecallFilter
	},
	InstanceTypeFilter: {
		new: (argument_index: number, instance_type: string) -> InstanceTypeFilter
	},
	ArgumentFilter: {
		new: (argument_index: number, argument: any) -> ArgumentFilter
	},
	UserdataTypeFilter: {
		new: (argument_index: number, userdata_type: userdata) -> UserdataTypeFilter
	},
	ArgCountFilter: {
		new: (argument_count: number) -> ArgCountFilter
	},
	CallerFilter: {
		new: (invert: boolean) -> CallerFilter
	},
	Font: {
		RegisterDefault: (font_name: string, options: string) -> Font,
		Register: (font_data: string, options: string) -> Font,
		ListFonts: () -> table
	},
	Line: {
		new: () -> Line
	},
	Text: {
		new: () -> Text
	},
	Image: {
		new: () -> Image
	},
	Circle: {
		new: () -> Circle
	},
	Square: {
		new: () -> Square
	},
	Triangle: {
		new: () -> Triangle
	},
	Quad: {
		new: () -> Quad
	},
	Point2D: {
		new: () -> Point2D
	},
	Point3D: {
		new: () -> Point3D
	},
	PointInstance: {
		new: (instance: Instance?, offset: CFrame?) -> PointInstance
	},
	PointOffset: {
		new: () -> PointOffset
	},
	LineDynamic: {
		new: () -> LineDynamic
	},
	PolyLineDynamic: {
		new: (points: table?) -> PolyLineDynamic
	},
	TextDynamic: {
		new: (point: Point?) -> TextDynamic
	},
	CircleDynamic: {
		new: (point: Point?) -> CircleDynamic
	},
	RectDynamic: {
		new: (point: Point?) -> RectDynamic
	},
	GradientRectDynamic: {
		new: (point: Point?) -> GradientRectDynamic
	},
	ImageDynamic: {
		new: (point: Point?) -> ImageDynamic
	},
	ImageRef: {
		new: () -> ImageRef
	},
	Value: {
		new: (value: any) -> Value
	},
	WebsocketClient: {
		new: (url_connection_string: string) -> WebsocketClient
	},
	Regex: {
		new: (pattern: string) -> Regex,
		Escape: (contents: string) -> string
	}
}

type RenderObject = {
	Visible: boolean
}

type RenderButton = RenderObject&{
	Label: string,
	Size: Vector2,
	OnUpdated: SynSignal
}

type RenderColorButton = RenderObject&{
	Description: string,
	Size: Vector2,
	Color: Color3,
	Alpha: number,
	OnUpdated: SynSignal
}

type RenderCheckbox = RenderObject&{
	Label: string,
	Value: boolean,
	OnUpdated: SynSignal
}

type RenderColorPicker = RenderObject&{
	Label: string,
	Color: Color3,
	Alpha: number,
	UseAlpha: boolean,
	ReturnInt: boolean,
	OnUpdated: SynSignal
}

type RenderCombo = RenderObject&{
	Label: string,
	Items: table,
	SelectedItem: number,
	OnUpdated: SynSignal
}

type RenderTextbox = RenderObject&{
	Label: string,
	Size: Vector2,
	MaxTextLength: number,
	Value: string,
	OnUpdated: SynSignal
}

type RenderSeparator = RenderObject&{
	Label: string
}

type RenderSlider = RenderObject&{
	Label: string,
	Min: number,
	Max: number,
	Value: number,
	Clamped: boolean,
	OnUpdated: SynSignal
}

type RenderIntSlider = RenderObject&{
	Label: string,
	Min: number,
	Max: number,
	Value: number,
	Clamped: boolean,
	OnUpdated: SynSignal
}

type RenderDrag = RenderObject&{
	Label: string,
	Speed: number,
	Min: number,
	Max: number,
	Value: number,
	Clamped: boolean,
	OnUpdated: SynSignal
}

type RenderIntDrag = RenderObject&{
	Label: string,
	Speed: number,
	Min: number,
	Max: number,
	Value: number,
	Clamped: boolean,
	OnUpdated: SynSignal
}

type RenderSelectable = RenderObject&{
	Label: string,
	Size: Vector2,
	Value: boolean,
	Toggles: boolean,
	OnUpdated: SynSignal
}

type RenderChildBase = RenderObject&{
	Clear: (self: RenderChildBase) -> (),
	SetStyle: (self: RenderChildBase, option: RenderStyleOption, value: number | Vector2) -> (),
	SetColor: (self: RenderChildBase, option: RenderColorOption, color: Color3, alpha: number) -> (),
	Button: (self: RenderChildBase) -> RenderButton,
	CheckBox: (self: RenderChildBase) -> RenderCheckBox,
	ColorPicker: (self: RenderChildBase) -> RenderColorPicker,
	ColorButton: (self: RenderChildBase) -> RenderColorButton,
	Combo: (self: RenderChildBase) -> RenderCombo,
	TextBox: (self: RenderChildBase) -> RenderTextBox,
	Label: (self: RenderChildBase) -> RenderLabel,
	Slider: (self: RenderChildBase) -> RenderSlider,
	IntSlider: (self: RenderChildBase) -> RenderIntSlider,
	Selectable: (self: RenderChildBase) -> RenderSelectable,
	Separator: (self: RenderChildBase) -> RenderSeparator,
	TabMenu: (self: RenderChildBase) -> RenderTabMenu,
	SameLine: (self: RenderChildBase) -> RenderSameLine,
	WithFont: (self: RenderChildBase) -> RenderFont,
	Indent: (self: RenderChildBase) -> RenderIndent,
	Collapsable: (self: RenderChildBase) -> RenderCollapsable,
	Child: (self: RenderChildBase) -> RenderChildWindow,
	Dummy: (self: RenderChildBase) -> RenderDummyWindow
}

type RenderTabMenu = RenderChildBase&{
	SetTabStyle: (self: RenderTabMenu, option: RenderStyleOption, value: number | Vector2) -> (),
	SetTabColor: (self: RenderTabMenu, option: RenderColorOption, color: Color3, alpha: number) -> (),
	Add: (self: RenderTabMenu, label: string) -> RenderDummyWindow,
	SelectedItem: number,
	OnUpdated: SynSignal
}

type RenderChildWindow = RenderChildBase&{
	Size: Vector2
}

type RenderSameLine = RenderChildBase&{

}

type RenderPopup = RenderChildBase&{
	Show: (self: RenderPopup) -> ()
}

type RenderFont = RenderChildBase&{
	Font: Font
}

type RenderDummyWindow = RenderChildBase&{

}

type RenderCollapsable = RenderChildBase&{
	HeaderLabel: string,
	DefaultOpen: boolean,
	OnUpdated: SynSignal
}

type RenderIndent = RenderChildBase&{
	Pixels: number
}

type RenderWindow = RenderChildBase&{
	Emplace: (self: RenderWindow, new_name: string?) -> (),
	WindowName: string,
	MinSize: Vector2,
	MaxSize: Vector2,
	DefaultSize: Vector2,
	CanResize: boolean,
	VisibilityOverride: boolean
}

type Duration = {
	Nanoseconds: number,
	Microseconds: number,
	Milliseconds: number,
	Seconds: number,
	Minutes: number,
	Hours: number,
	Days: number,
	Months: number,
	Years: number
}

type Stopwatch = {
	Start: (self: Stopwatch) -> (),
	Stop: (self: Stopwatch) -> (),
	Reset: (self: Stopwatch) -> (),
	ElapsedTime: Duration
}

type Timer = {
	Enabled: boolean,
	RepetitionCount: number,
	Interval: Duration,
	TimeLeft: Duration,
	LastElapsed: Duration,
	OnElapsed: SynSignal
}

type FilterBase = {

}

type NotFilter = FilterBase&{
	Target: FilterBase
}

type AnyFilter = FilterBase&{
	Filters: table
}

type AllFilter = FilterBase&{
	Filters: table
}

type TypeFilter = FilterBase&{
	ArgumentIndex: number,
	ArgumentType: string
}

type NamecallFilter = FilterBase&{
	NamecallMethod: string
}

type InstanceTypeFilter = FilterBase&{
	ArgumentIndex: number,
	InstanceType: string
}

type ArgumentFilter = FilterBase&{
	ArgumentIndex: number,
	Argument: any
}

type UserdataTypeFilter = FilterBase&{
	ArgumentIndex: number,
	UserdataType: userdata
}

type ArgCountFilter = FilterBase&{
	ArgumentCount: number
}

type CallerFilter = FilterBase&{
	Invert: boolean
}

type Font = {
	GetTextBounds: (self: Font, size: number, text: string) -> Vector2
}

type Drawing = {
	WaitForRenderer: (self: Drawing) -> ()
}

type DrawEntry = {
	Remove: (self: DrawEntry) -> (),
	Destroy: (self: DrawEntry) -> (),
	MoveToFront: (self: DrawEntry) -> (),
	MoveToBack: (self: DrawEntry) -> (),
	Visible: boolean,
	ZIndex: number,
	Transparency: number,
	Opacity: number,
	Color: Color3,
	ColorVec3: Vector3
}

type Line = DrawEntry&{
	Thickness: number,
	From: Vector2,
	To: Vector2
}

type Text = DrawEntry&{
	Text: string,
	TextBounds: Vector2,
	Size: number,
	Font: Drawing.Fonts,
	Centered: boolean,
	Outlined: boolean,
	OutlineColor: Color3,
	Position: Vector2
}

type Image = DrawEntry&{
	Data: string,
	ImageSize: Vector2,
	Size: Vector2,
	Position: Vector2,
	Rounding: number
}

type Circle = DrawEntry&{
	Thickness: number,
	NumSides: number,
	Radius: number,
	Filled: boolean,
	Position: Vector2
}

type Square = DrawEntry&{
	Thickness: number,
	Size: Vector2,
	Position: Vector2,
	Filled: boolean
}

type Triangle = DrawEntry&{
	Thickness: number,
	PointA: Vector2,
	PointB: Vector2,
	PointC: Vector2,
	Filled: boolean
}

type Quad = DrawEntry&{
	Thickness: number,
	PointA: Vector2,
	PointB: Vector2,
	PointC: Vector2,
	PointD: Vector2,
	Filled: boolean
}

type Point = {
	ScreenPos: Vector2,
	Visible: boolean,
	HasColorOverride: boolean,
	ColorOverride: Color3,
	ColorOverrideVec3: Vector3,
	ColorOverrideOpacity: number
}

type Point2D = Point&{
	Point: UDim2,
	PointVec2: Vector2
}

type Point3D = Point&{
	Point: Vector3
}

type PointInstance = Point&{
	Instance: Instance,
	Offset: CFrame,
	RotationType: CFrameRotationType,
	WorldPos: Vector3
}

type PointMouse = Point&{

}

type PointOffset = Point&{
	Point: Point,
	Offset: Vector2
}

type DrawEntryDynamic = {
	MoveToFront: (self: DrawEntryDynamic) -> (),
	MoveToBack: (self: DrawEntryDynamic) -> (),
	Visible: boolean,
	ZIndex: number,
	Opacity: number,
	Color: Color3,
	Outlined: boolean,
	OutlineOpacity: number,
	OutlineThicknesss: number,
	OutlineColor: Color3
}

type LineDynamic = DrawEntryDynamic&{
	Thickness: number,
	From: Point,
	To: Point
}

type PolyLineDynamic = DrawEntryDynamic&{
	ReTriangulate: (self: PolyLineDynamic) -> (),
	SetPoints: (self: PolyLineDynamic, points: table) -> (),
	Thickness: number,
	FillType: PolyLineFillType,
	Points: table
}

type TextDynamic = DrawEntryDynamic&{
	Text: string,
	TextBounds: Vector2,
	Size: number,
	Font: Drawing.Fonts,
	Position: Point,
	XAlignment: XAlignment,
	YAlignment: YAlignment,
	TextXAlignment: XAlignment
}

type CircleDynamic = DrawEntryDynamic&{
	Thickness: number,
	NumSides: number,
	Radius: number,
	Filled: boolean,
	Position: Point,
	Edge: Point,
	XAlignment: XAlignment,
	YAlignment: YAlignment
}

type RectDynamicBase = DrawEntryDynamic&{
	Size: Vector2,
	Position: Point,
	BottomRight: Point,
	XAlignment: XAlignment,
	YAlignment: YAlignment
}

type RectDynamic = RectDynamicBase&{
	Thickness: number,
	Filled: boolean,
	Rounding: number
}

type GradientRectDynamic = RectDynamicBase&{
	Thickness: number,
	ColorUpperLeft: Color3,
	ColorUpperRight: Color3,
	ColorBottomLeft: Color3,
	ColorBottomRight: Color3,
	OpacityUpperLeft: number,
	OpacityUpperRight: number,
	OpacityBottomLeft: number,
	OpacityBottomRight: number,
	Opacity: number
}

type ImageDynamic = RectDynamicBase&{
	Image: string,
	ImageSize: Vector2,
	Rounding: number
}

type ImageRef = {
	ImageSize: Vector2,
	SpeedMultiplier: number
}

type Value = {
	Get: (self: Value) -> any,
	Set: (self: Value, value: any) -> ()
}

type SynSignal = {
	Connect: (self: SynSignal, f: generic_function) -> SynConnection,
	Wait: (self: SynSignal) -> any
}

type SynConnection = {
	Disconnect: (self: SynConnection) -> ()
}

type ProtoProxy = {
	CodeHash: number
}

type ReadonlyTableProxy = {

}

type WebsocketClient = {
	Disconnect: (self: WebsocketClient) -> (),
	Connect: (self: WebsocketClient, connection_info: table) -> (),
	Send: (self: WebsocketClient, message: string, is_binary: boolean?) -> (),
	Url: string,
	DataReceived: SynSignal,
	ConnectionClosed: SynSignal
}

type Match = {
	Captures: table
}

type Regex = {
	Status: (self: Regex) -> (boolean, string),
	Match: (self: Regex, contents: string) -> table,
	Replace: (self: Regex, contents: string, replace_with: string) -> string
}

