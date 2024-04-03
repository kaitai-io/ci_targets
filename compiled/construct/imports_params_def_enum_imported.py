from construct import *
from construct.lib import *

imports_params_def_enum_imported = Struct(
	'one' / LazyBound(lambda: enum_import_seq),
	'two' / LazyBound(lambda: params_def_enum_imported),
)

_schema = imports_params_def_enum_imported
