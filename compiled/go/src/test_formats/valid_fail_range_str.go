// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ValidFailRangeStr struct {
	Foo string
	_io *kaitai.Stream
	_root *ValidFailRangeStr
	_parent interface{}
}
func NewValidFailRangeStr() *ValidFailRangeStr {
	return &ValidFailRangeStr{
	}
}

func (this *ValidFailRangeStr) Read(io *kaitai.Stream, parent interface{}, root *ValidFailRangeStr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(2))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.Foo = string(tmp1)
	return err
}
