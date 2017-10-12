// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type RepeatNStrz struct {
	Qty uint32
	Lines []string
	_io *kaitai.Stream
	_root *RepeatNStrz
	_parent interface{}
}

func (this *RepeatNStrz) Read(io *kaitai.Stream, parent interface{}, root *RepeatNStrz) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Qty = tmp1
	this.Lines = make([]string, this.Qty)
	for i := range this.Lines {
		tmp2, err := this._io.ReadBytesTerm(0, false, true, true)
		if err != nil {
			return err
		}
		this.Lines[i] = string(tmp2)
	}
	return err
}
