// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type RepeatEosStruct struct {
	Chunks []*RepeatEosStruct_Chunk
	_io *kaitai.Stream
	_root *RepeatEosStruct
	_parent interface{}
}
func NewRepeatEosStruct() *RepeatEosStruct {
	return &RepeatEosStruct{
	}
}

func (this *RepeatEosStruct) Read(io *kaitai.Stream, parent interface{}, root *RepeatEosStruct) (err error) {
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
		tmp2 := NewRepeatEosStruct_Chunk()
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Chunks = append(this.Chunks, tmp2)
	}
	return err
}
type RepeatEosStruct_Chunk struct {
	Offset uint32
	Len uint32
	_io *kaitai.Stream
	_root *RepeatEosStruct
	_parent *RepeatEosStruct
}
func NewRepeatEosStruct_Chunk() *RepeatEosStruct_Chunk {
	return &RepeatEosStruct_Chunk{
	}
}

func (this *RepeatEosStruct_Chunk) Read(io *kaitai.Stream, parent *RepeatEosStruct, root *RepeatEosStruct) (err error) {
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
