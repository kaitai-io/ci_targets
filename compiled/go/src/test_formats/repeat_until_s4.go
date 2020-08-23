// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type RepeatUntilS4 struct {
	Entries []int32
	Afterall string
	_io *kaitai.Stream
	_root *RepeatUntilS4
	_parent interface{}
}
func NewRepeatUntilS4() *RepeatUntilS4 {
	return &RepeatUntilS4{
	}
}

func (this *RepeatUntilS4) Read(io *kaitai.Stream, parent interface{}, root *RepeatUntilS4) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for i := 1;; i++ {
		tmp1, err := this._io.ReadS4le()
		if err != nil {
			return err
		}
		_it := tmp1
		this.Entries = append(this.Entries, _it)
		if _it == -1 {
			break
		}
	}
	tmp2, err := this._io.ReadBytesTerm(0, false, true, true)
	if err != nil {
		return err
	}
	this.Afterall = string(tmp2)
	return err
}
