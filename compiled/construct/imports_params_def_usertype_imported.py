from construct import *
from construct.lib import *

imports_params_def_usertype_imported = Struct(
	'hw' / LazyBound(lambda: hello_world),
	'two' / LazyBound(lambda: params_def_usertype_imported),
)

_schema = imports_params_def_usertype_imported
