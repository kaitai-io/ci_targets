// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
import "io"
import "golang.org/x/text/encoding/charmap"
import "golang.org/x/text/encoding/traditionalchinese"
import "golang.org/x/text/encoding/japanese"

var _ = io.SeekStart
var _ = charmap.CodePage437
var _ = japanese.ShiftJIS
var _ = traditionalchinese.Big5

type RepeatEosStruct struct {
	Chunks []*RepeatEosStruct_Chunk
	_io *kaitai.Stream
	_root *RepeatEosStruct
	_parent interface{}
}

func (this *RepeatEosStruct) Read(io *kaitai.Stream, parent interface{}, root *RepeatEosStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this.Chunks = new []*RepeatEosStruct_Chunk();
	while (!this._io.isEof()) {
		tmp1 := new(RepeatEosStruct_Chunk)
		err = tmp1.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Chunks.add(tmp1);
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

func (this *RepeatEosStruct_Chunk) Read(io *kaitai.Stream, parent *RepeatEosStruct, root *RepeatEosStruct) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Offset = tmp2
	tmp3, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Len = tmp3
	return err
}
