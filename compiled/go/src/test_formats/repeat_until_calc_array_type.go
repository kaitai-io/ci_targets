// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)

type RepeatUntilCalcArrayType struct {
	Records []*RepeatUntilCalcArrayType_Record
	_io *kaitai.Stream
	_root *RepeatUntilCalcArrayType
	_parent interface{}
	_raw_Records [][]byte
	_f_recsAccessor bool
	recsAccessor []*RepeatUntilCalcArrayType_Record
	_f_firstRec bool
	firstRec *RepeatUntilCalcArrayType_Record
}
func NewRepeatUntilCalcArrayType() *RepeatUntilCalcArrayType {
	return &RepeatUntilCalcArrayType{
	}
}

func (this *RepeatUntilCalcArrayType) Read(io *kaitai.Stream, parent interface{}, root *RepeatUntilCalcArrayType) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this._raw_Records = make([][]byte, 0);
	for i := 1;; i++ {
		tmp1, err := this._io.ReadBytes(int(5))
		if err != nil {
			return err
		}
		tmp1 = tmp1
		_it := tmp1
		this._raw_Records = append(this._raw_Records, _it)
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
func (this *RepeatUntilCalcArrayType) RecsAccessor() (v []*RepeatUntilCalcArrayType_Record, err error) {
	if (this._f_recsAccessor) {
		return this.recsAccessor, nil
	}
	this.recsAccessor = []*RepeatUntilCalcArrayType_Record(this.Records)
	this._f_recsAccessor = true
	return this.recsAccessor, nil
}
func (this *RepeatUntilCalcArrayType) FirstRec() (v *RepeatUntilCalcArrayType_Record, err error) {
	if (this._f_firstRec) {
		return this.firstRec, nil
	}
	tmp3, err := this.RecsAccessor()
	if err != nil {
		return nil, err
	}
	this.firstRec = tmp3[0]
	this._f_firstRec = true
	return this.firstRec, nil
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
