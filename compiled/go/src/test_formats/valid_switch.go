// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ValidSwitch struct {
	A uint8
	B int
	_io *kaitai.Stream
	_root *ValidSwitch
	_parent interface{}
}
func NewValidSwitch() *ValidSwitch {
	return &ValidSwitch{
	}
}

func (this *ValidSwitch) Read(io *kaitai.Stream, parent interface{}, root *ValidSwitch) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.A = tmp1
	switch (this.A) {
	case 80:
		tmp2, err := this._io.ReadU2le()
		if err != nil {
			return err
		}
		this.B = tmp2
	default:
		tmp3, err := this._io.ReadU2be()
		if err != nil {
			return err
		}
		this.B = tmp3
	}
	return err
}
