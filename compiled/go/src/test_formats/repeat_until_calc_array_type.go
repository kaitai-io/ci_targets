// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type RepeatUntilCalcArrayType struct {
	Records []*RepeatUntilCalcArrayType_Record
	_io *kaitai.Stream
	_root *RepeatUntilCalcArrayType
	_parent kaitai.Struct
	_raw_Records [][]byte
	_f_firstRec bool
	firstRec *RepeatUntilCalcArrayType_Record
	_f_recsAccessor bool
	recsAccessor []*RepeatUntilCalcArrayType_Record
}
func NewRepeatUntilCalcArrayType() *RepeatUntilCalcArrayType {
	return &RepeatUntilCalcArrayType{
	}
}

func (this RepeatUntilCalcArrayType) IO_() *kaitai.Stream {
	return this._io
}

func (this *RepeatUntilCalcArrayType) Read(io *kaitai.Stream, parent kaitai.Struct, root *RepeatUntilCalcArrayType) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for i := 1;; i++ {
		tmp1, err := this._io.ReadBytes(int(5))
		if err != nil {
			return err
		}
		tmp1 = tmp1
		_buf := tmp1
		this._raw_Records = append(this._raw_Records, _buf)
		_io__raw_Records := kaitai.NewStream(bytes.NewReader(_buf))
		tmp2 := NewRepeatUntilCalcArrayType_Record()
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
func (this *RepeatUntilCalcArrayType) FirstRec() (v *RepeatUntilCalcArrayType_Record, err error) {
	if (this._f_firstRec) {
		return this.firstRec, nil
	}
	this._f_firstRec = true
	tmp3, err := this.RecsAccessor()
	if err != nil {
		return nil, err
	}
	this.firstRec = tmp3[0]
	return this.firstRec, nil
}
func (this *RepeatUntilCalcArrayType) RecsAccessor() (v []*RepeatUntilCalcArrayType_Record, err error) {
	if (this._f_recsAccessor) {
		return this.recsAccessor, nil
	}
	this._f_recsAccessor = true
	this.recsAccessor = []*RepeatUntilCalcArrayType_Record(this.Records)
	return this.recsAccessor, nil
}
type RepeatUntilCalcArrayType_Record struct {
	Marker uint8
	Body uint32
	_io *kaitai.Stream
	_root *RepeatUntilCalcArrayType
	_parent *RepeatUntilCalcArrayType
}
func NewRepeatUntilCalcArrayType_Record() *RepeatUntilCalcArrayType_Record {
	return &RepeatUntilCalcArrayType_Record{
	}
}

func (this RepeatUntilCalcArrayType_Record) IO_() *kaitai.Stream {
	return this._io
}

func (this *RepeatUntilCalcArrayType_Record) Read(io *kaitai.Stream, parent *RepeatUntilCalcArrayType, root *RepeatUntilCalcArrayType) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Marker = tmp4
	tmp5, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Body = uint32(tmp5)
	return err
}
