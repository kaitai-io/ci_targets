// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsDefUsertypeImported struct {
	HwParam *HelloWorld
	_io *kaitai.Stream
	_root *ParamsDefUsertypeImported
	_parent kaitai.Struct
	_f_hwOne bool
	hwOne uint8
}
func NewParamsDefUsertypeImported(hwParam *HelloWorld) *ParamsDefUsertypeImported {
	return &ParamsDefUsertypeImported{
		HwParam: hwParam,
	}
}

func (this ParamsDefUsertypeImported) IO_() *kaitai.Stream {
	return this._io
}

func (this *ParamsDefUsertypeImported) Read(io *kaitai.Stream, parent kaitai.Struct, root *ParamsDefUsertypeImported) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *ParamsDefUsertypeImported) HwOne() (v uint8, err error) {
	if (this._f_hwOne) {
		return this.hwOne, nil
	}
	this.hwOne = uint8(this.HwParam.One)
	this._f_hwOne = true
	return this.hwOne, nil
}
