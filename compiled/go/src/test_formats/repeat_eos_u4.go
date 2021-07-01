// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type RepeatEosU4 struct {
	Numbers []uint32
	_io *kaitai.Stream
	_root *RepeatEosU4
	_parent interface{}
}
func NewRepeatEosU4() *RepeatEosU4 {
	return &RepeatEosU4{
	}
}

func (this *RepeatEosU4) Read(io *kaitai.Stream, parent interface{}, root *RepeatEosU4) (err error) {
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
		tmp2, err := this._io.ReadU4le()
		if err != nil {
			return err
		}
		this.Numbers = append(this.Numbers, tmp2)
	}
	return err
}
