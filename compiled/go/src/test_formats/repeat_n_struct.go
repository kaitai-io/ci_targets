// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type RepeatNStruct struct {
	Qty uint32
	Chunks []*RepeatNStruct_Chunk
	_io *kaitai.Stream
	_root *RepeatNStruct
	_parent interface{}
}

func (this *RepeatNStruct) Read(io *kaitai.Stream, parent interface{}, root *RepeatNStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Qty = uint32(tmp1)
	this.Chunks = make([]*RepeatNStruct_Chunk, this.Qty)
	for i := range this.Chunks {
		tmp2 := new(RepeatNStruct_Chunk)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Chunks[i] = tmp2
	}
	return err
}
type RepeatNStruct_Chunk struct {
	Offset uint32
	Len uint32
	_io *kaitai.Stream
	_root *RepeatNStruct
	_parent *RepeatNStruct
}

func (this *RepeatNStruct_Chunk) Read(io *kaitai.Stream, parent *RepeatNStruct, root *RepeatNStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Offset = uint32(tmp3)
	tmp4, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Len = uint32(tmp4)
	return err
}
