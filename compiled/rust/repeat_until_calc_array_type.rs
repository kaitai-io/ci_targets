// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#![allow(unused_imports)]
#![allow(non_snake_case)]
#![allow(non_camel_case_types)]
#![allow(irrefutable_let_patterns)]
#![allow(unused_comparisons)]

extern crate kaitai;
use kaitai::*;
use std::convert::{TryFrom, TryInto};
use std::cell::{Ref, Cell, RefCell};
use std::rc::{Rc, Weak};

#[derive(Default, Debug, Clone)]
pub struct RepeatUntilCalcArrayType {
    pub _root: SharedType<RepeatUntilCalcArrayType>,
    pub _parent: SharedType<RepeatUntilCalcArrayType>,
    pub _self: SharedType<Self>,
    records: RefCell<Vec<OptRc<RepeatUntilCalcArrayType_Record>>>,
    _io: RefCell<BytesReader>,
    records_raw: RefCell<Vec<Vec<u8>>>,
    f_first_rec: Cell<bool>,
    first_rec: RefCell<OptRc<RepeatUntilCalcArrayType_Record>>,
    f_recs_accessor: Cell<bool>,
    recs_accessor: RefCell<Vec<OptRc<RepeatUntilCalcArrayType_Record>>>,
}
impl KStruct for RepeatUntilCalcArrayType {
    type Root = RepeatUntilCalcArrayType;
    type Parent = RepeatUntilCalcArrayType;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.records_raw.borrow_mut() = Vec::new();
        *self_rc.records.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while {
                self_rc.records_raw.borrow_mut().push(_io.read_bytes(5 as usize)?.into());
                let _t_records_raw = self_rc.records_raw.borrow();
                let _tmpa = _t_records_raw.last().unwrap();
                let records_raw = self_rc.records_raw.borrow();
                let io_records_raw = BytesReader::from(records_raw.last().unwrap().clone());
                let t = Self::read_into::<BytesReader, RepeatUntilCalcArrayType_Record>(&io_records_raw, Some(self_rc._root.clone()), Some(self_rc._self.clone()))?.into();
                self_rc.records.borrow_mut().push(t);
                let _t_records = self_rc.records.borrow();
                let _tmpa = _t_records.last().unwrap();
                _i += 1;
                let x = !(*_tmpa.marker() == 170);
                x
            } {}
        }
        Ok(())
    }
}
impl RepeatUntilCalcArrayType {
    pub fn first_rec(
        &self
    ) -> KResult<Ref<'_, OptRc<RepeatUntilCalcArrayType_Record>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_first_rec.get() {
            return Ok(self.first_rec.borrow());
        }
        *self.first_rec.borrow_mut() = self.recs_accessor()?.first().ok_or(KError::EmptyIterator)?.clone();
        Ok(self.first_rec.borrow())
    }
    pub fn recs_accessor(
        &self
    ) -> KResult<Ref<'_, Vec<OptRc<RepeatUntilCalcArrayType_Record>>>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_recs_accessor.get() {
            return Ok(self.recs_accessor.borrow());
        }
        self.f_recs_accessor.set(true);
        *self.recs_accessor.borrow_mut() = self.records().to_vec();
        Ok(self.recs_accessor.borrow())
    }
}
impl RepeatUntilCalcArrayType {
    pub fn records(&self) -> Ref<'_, Vec<OptRc<RepeatUntilCalcArrayType_Record>>> {
        self.records.borrow()
    }
}
impl RepeatUntilCalcArrayType {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
impl RepeatUntilCalcArrayType {
    pub fn records_raw(&self) -> Ref<'_, Vec<Vec<u8>>> {
        self.records_raw.borrow()
    }
}

#[derive(Default, Debug, Clone)]
pub struct RepeatUntilCalcArrayType_Record {
    pub _root: SharedType<RepeatUntilCalcArrayType>,
    pub _parent: SharedType<RepeatUntilCalcArrayType>,
    pub _self: SharedType<Self>,
    marker: RefCell<u8>,
    body: RefCell<u32>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatUntilCalcArrayType_Record {
    type Root = RepeatUntilCalcArrayType;
    type Parent = RepeatUntilCalcArrayType;

    fn read<S: KStream>(
        self_rc: &OptRc<Self>,
        _io: &S,
        _root: SharedType<Self::Root>,
        _parent: SharedType<Self::Parent>,
    ) -> KResult<()> {
        *self_rc._io.borrow_mut() = _io.clone();
        self_rc._root.set(_root.get());
        self_rc._parent.set(_parent.get());
        self_rc._self.set(Ok(self_rc.clone()));
        let _rrc = self_rc._root.get_value().borrow().upgrade();
        let _prc = self_rc._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        *self_rc.marker.borrow_mut() = _io.read_u1()?.into();
        *self_rc.body.borrow_mut() = _io.read_u4le()?.into();
        Ok(())
    }
}
impl RepeatUntilCalcArrayType_Record {
}
impl RepeatUntilCalcArrayType_Record {
    pub fn marker(&self) -> Ref<'_, u8> {
        self.marker.borrow()
    }
}
impl RepeatUntilCalcArrayType_Record {
    pub fn body(&self) -> Ref<'_, u32> {
        self.body.borrow()
    }
}
impl RepeatUntilCalcArrayType_Record {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
