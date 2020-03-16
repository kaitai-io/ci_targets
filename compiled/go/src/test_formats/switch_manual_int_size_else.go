// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type SwitchManualIntSizeElse struct {
	Chunks []*SwitchManualIntSizeElse_Chunk
	_io *kaitai.Stream
	_root *SwitchManualIntSizeElse
	_parent interface{}
}

func (this *SwitchManualIntSizeElse) Read(io *kaitai.Stream, parent interface{}, root *SwitchManualIntSizeElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for {
		tmp1, err := this._io.EOF()
		if err != nil {
			return err
		}
		if tmp1 {
			break
		}
		tmp2 := new(SwitchManualIntSizeElse_Chunk)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Chunks = append(this.Chunks, tmp2)
	}
	return err
}
type SwitchManualIntSizeElse_Chunk struct {
	Code uint8
	Size uint32
	Body interface{}
	_io *kaitai.Stream
	_root *SwitchManualIntSizeElse
	_parent *SwitchManualIntSizeElse
	_raw_Body []byte
}

func (this *SwitchManualIntSizeElse_Chunk) Read(io *kaitai.Stream, parent *SwitchManualIntSizeElse, root *SwitchManualIntSizeElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Code = tmp3
	tmp4, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Size = uint32(tmp4)
	switch (this.Code) {
	case 17:
		tmp5, err := this._io.ReadBytes(int(this.Size))
		if err != nil {
			return err
		}
		tmp5 = tmp5
		this._raw_Body = tmp5
		_io__raw_Body := kaitai.NewStream(bytes.NewReader(this._raw_Body))
		tmp6 := new(SwitchManualIntSizeElse_Chunk_ChunkMeta)
		err = tmp6.Read(_io__raw_Body, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp6
	case 34:
		tmp7, err := this._io.ReadBytes(int(this.Size))
		if err != nil {
			return err
		}
		tmp7 = tmp7
		this._raw_Body = tmp7
		_io__raw_Body := kaitai.NewStream(bytes.NewReader(this._raw_Body))
		tmp8 := new(SwitchManualIntSizeElse_Chunk_ChunkDir)
		err = tmp8.Read(_io__raw_Body, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp8
	default:
		tmp9, err := this._io.ReadBytes(int(this.Size))
		if err != nil {
			return err
		}
		tmp9 = tmp9
		this._raw_Body = tmp9
		_io__raw_Body := kaitai.NewStream(bytes.NewReader(this._raw_Body))
		tmp10 := new(SwitchManualIntSizeElse_Chunk_Dummy)
		err = tmp10.Read(_io__raw_Body, this, this._root)
		if err != nil {
			return err
		}
		this.Body = tmp10
	}
	return err
}
type SwitchManualIntSizeElse_Chunk_ChunkMeta struct {
	Title string
	Author string
	_io *kaitai.Stream
	_root *SwitchManualIntSizeElse
	_parent *SwitchManualIntSizeElse_Chunk
}

func (this *SwitchManualIntSizeElse_Chunk_ChunkMeta) Read(io *kaitai.Stream, parent *SwitchManualIntSizeElse_Chunk, root *SwitchManualIntSizeElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp11, err := this._io.ReadBytesTerm(0, false, true, true)
	if err != nil {
		return err
	}
	this.Title = string(tmp11)
	tmp12, err := this._io.ReadBytesTerm(0, false, true, true)
	if err != nil {
		return err
	}
	this.Author = string(tmp12)
	return err
}
type SwitchManualIntSizeElse_Chunk_ChunkDir struct {
	Entries []string
	_io *kaitai.Stream
	_root *SwitchManualIntSizeElse
	_parent *SwitchManualIntSizeElse_Chunk
}

func (this *SwitchManualIntSizeElse_Chunk_ChunkDir) Read(io *kaitai.Stream, parent *SwitchManualIntSizeElse_Chunk, root *SwitchManualIntSizeElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for {
		tmp13, err := this._io.EOF()
		if err != nil {
			return err
		}
		if tmp13 {
			break
		}
		tmp14, err := this._io.ReadBytes(int(4))
		if err != nil {
			return err
		}
		tmp14 = tmp14
		this.Entries = append(this.Entries, string(tmp14))
	}
	return err
}
type SwitchManualIntSizeElse_Chunk_Dummy struct {
	Rest []byte
	_io *kaitai.Stream
	_root *SwitchManualIntSizeElse
	_parent *SwitchManualIntSizeElse_Chunk
}

func (this *SwitchManualIntSizeElse_Chunk_Dummy) Read(io *kaitai.Stream, parent *SwitchManualIntSizeElse_Chunk, root *SwitchManualIntSizeElse) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp15, err := this._io.ReadBytesFull()
	if err != nil {
		return err
	}
	tmp15 = tmp15
	this.Rest = tmp15
	return err
}
