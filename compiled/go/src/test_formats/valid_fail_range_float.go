// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ValidFailRangeFloat struct {
	Foo float32
	_io *kaitai.Stream
	_root *ValidFailRangeFloat
	_parent interface{}
}

func (this *ValidFailRangeFloat) Read(io *kaitai.Stream, parent interface{}, root *ValidFailRangeFloat) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadF4le()
	if err != nil {
		return err
	}
	this.Foo = float32(tmp1)
	return err
}
