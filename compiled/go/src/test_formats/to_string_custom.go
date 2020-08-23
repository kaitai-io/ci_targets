// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ToStringCustom struct {
	S1 string
	S2 string
	_io *kaitai.Stream
	_root *ToStringCustom
	_parent interface{}
}
func NewToStringCustom() *ToStringCustom {
	return &ToStringCustom{
	}
}

func (this *ToStringCustom) Read(io *kaitai.Stream, parent interface{}, root *ToStringCustom) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytesTerm(124, false, true, true)
	if err != nil {
		return err
	}
	this.S1 = string(tmp1)
	tmp2, err := this._io.ReadBytesTerm(124, false, true, true)
	if err != nil {
		return err
	}
	this.S2 = string(tmp2)
	return err
}
