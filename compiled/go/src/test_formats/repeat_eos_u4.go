// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type RepeatEosU4 struct {
	Numbers []uint32
	_io *kaitai.Stream
	_root *RepeatEosU4
	_parent interface{}
}

func (this *RepeatEosU4) Read(io *kaitai.Stream, parent interface{}, root *RepeatEosU4) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for !this._io.EOF() {
		tmp1, err := this._io.ReadU4le()
		if err != nil {
			return err
		}
		this.Numbers = append(this.Numbers, tmp1)
	}
	return err
}
