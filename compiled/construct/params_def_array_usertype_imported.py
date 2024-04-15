from construct import *
from construct.lib import *

params_def_array_usertype_imported = Struct(
	'hw0_one' / Computed(lambda this: this.hws_param[0].one),
	'hw1_one' / Computed(lambda this: this.hws_param[1].one),
)

_schema = params_def_array_usertype_imported
