// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type RepeatUntilSized struct {
	Records []*RepeatUntilSized_Record
	_io *kaitai.Stream
	_root *RepeatUntilSized
	_parent interface{}
	_raw_Records [][]byte
}

func (this *RepeatUntilSized) Read(io *kaitai.Stream, parent interface{}, root *RepeatUntilSized) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this._raw_Records = make([][]byte, 0);
	for {
		tmp1, err := this._io.ReadBytes(int(5))
		if err != nil {
			return err
		}
		_it := tmp1
		this._raw_Records = append(this._raw_Records, _it)
		_io__raw_Records := kaitai.NewStream(bytes.NewReader(_buf))
		tmp2 := new(RepeatUntilSized_Record)
		err = tmp2.Read(_io__raw_Records, this, this._root)
		if err != nil {
			return err
		}
		_it := tmp2
		this.Records = append(this.Records, _it)
		if _it.Marker == 170 {
			break
		}
	}
	return err
}
type RepeatUntilSized_Record struct {
	Marker uint8
	Body uint32
	_io *kaitai.Stream
	_root *RepeatUntilSized
	_parent *RepeatUntilSized
}

func (this *RepeatUntilSized_Record) Read(io *kaitai.Stream, parent *RepeatUntilSized, root *RepeatUntilSized) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Marker = tmp3
	tmp4, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Body = tmp4
	return err
}
