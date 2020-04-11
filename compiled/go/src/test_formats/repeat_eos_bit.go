// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type RepeatEosBit struct {
	Nibbles []uint64
	_io *kaitai.Stream
	_root *RepeatEosBit
	_parent interface{}
}
func NewRepeatEosBit() *RepeatEosBit {
	return &RepeatEosBit{
	}
}

func (this *RepeatEosBit) Read(io *kaitai.Stream, parent interface{}, root *RepeatEosBit) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for i := 1;; i++ {
		tmp1, err := this._io.EOF()
		if err != nil {
			return err
		}
		if tmp1 {
			break
		}
		tmp2, err := this._io.ReadBitsInt(4)
		if err != nil {
			return err
		}
		this.Nibbles = append(this.Nibbles, tmp2)
	}
	return err
}
