// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ImportsCircularB struct {
	Initial uint8
	BackRef *ImportsCircularA
	_io *kaitai.Stream
	_root *ImportsCircularB
	_parent interface{}
}

func (this *ImportsCircularB) Read(io *kaitai.Stream, parent interface{}, root *ImportsCircularB) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Initial = tmp1
	if (this.Initial == 65) {
		tmp2 := new(ImportsCircularA)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.BackRef = tmp2
	}
	return err
}
