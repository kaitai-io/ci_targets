// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ToStringCustom struct {
	S1 string
	S2 string
	_io *kaitai.Stream
	_root *ToStringCustom
	_parent kaitai.Struct
}
func NewToStringCustom() *ToStringCustom {
	return &ToStringCustom{
	}
}

func (this ToStringCustom) IO_() *kaitai.Stream {
	return this._io
}

func (this *ToStringCustom) Read(io *kaitai.Stream, parent kaitai.Struct, root *ToStringCustom) (err error) {
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

func (this ToStringCustom) String() string {
	return (("s1 = " + this.S1) + ", s2 = ") + this.S2
}
