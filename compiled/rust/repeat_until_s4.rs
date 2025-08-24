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
pub struct RepeatUntilS4 {
    pub _root: SharedType<RepeatUntilS4>,
    pub _parent: SharedType<RepeatUntilS4>,
    pub _self: SharedType<Self>,
    entries: RefCell<Vec<i32>>,
    afterall: RefCell<String>,
    _io: RefCell<BytesReader>,
}
impl KStruct for RepeatUntilS4 {
    type Root = RepeatUntilS4;
    type Parent = RepeatUntilS4;

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
        *self_rc.entries.borrow_mut() = Vec::new();
        {
            let mut _i = 0;
            while {
                self_rc.entries.borrow_mut().push(_io.read_s4le()?.into());
                let _t_entries = self_rc.entries.borrow();
                let _tmpa = *_t_entries.last().unwrap();
                _i += 1;
                let x = !(((_tmpa as i32) == (-1 as i32)));
                x
            } {}
        }
        *self_rc.afterall.borrow_mut() = bytes_to_str(&_io.read_bytes_term(0, false, true, true)?.into(), "ASCII")?;
        Ok(())
    }
}
impl RepeatUntilS4 {
}
impl RepeatUntilS4 {
    pub fn entries(&self) -> Ref<'_, Vec<i32>> {
        self.entries.borrow()
    }
}
impl RepeatUntilS4 {
    pub fn afterall(&self) -> Ref<'_, String> {
        self.afterall.borrow()
    }
}
impl RepeatUntilS4 {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
