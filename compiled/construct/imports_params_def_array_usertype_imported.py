from construct import *
from construct.lib import *

imports_params_def_array_usertype_imported = Struct(
	'hws' / Array(2, LazyBound(lambda: hello_world)),
	'two' / LazyBound(lambda: params_def_array_usertype_imported),
)

_schema = imports_params_def_array_usertype_imported
