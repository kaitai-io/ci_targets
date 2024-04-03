from construct import *
from construct.lib import *

params_def_usertype_imported = Struct(
	'hw_one' / Computed(lambda this: this.hw_param.one),
)

_schema = params_def_usertype_imported
