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
pub struct InstanceInRepeatUntil {
    pub _root: SharedType<InstanceInRepeatUntil>,
    pub _parent: SharedType<InstanceInRepeatUntil>,
    pub _self: SharedType<Self>,
    entries: RefCell<Vec<i16>>,
    _io: RefCell<BytesReader>,
    f_until_val: Cell<bool>,
    until_val: RefCell<i16>,
}
impl KStruct for InstanceInRepeatUntil {
    type Root = InstanceInRepeatUntil;
    type Parent = InstanceInRepeatUntil;

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
                self_rc.entries.borrow_mut().push(_io.read_s2le()?.into());
                let _t_entries = self_rc.entries.borrow();
                let _tmpa = *_t_entries.last().unwrap();
                _i += 1;
                let x = !(_tmpa == *self_rc.until_val()?);
                x
            } {}
        }
        Ok(())
    }
}
impl InstanceInRepeatUntil {
    pub fn until_val(
        &self
    ) -> KResult<Ref<'_, i16>> {
        let _io = self._io.borrow();
        let _rrc = self._root.get_value().borrow().upgrade();
        let _prc = self._parent.get_value().borrow().upgrade();
        let _r = _rrc.as_ref().unwrap();
        if self.f_until_val.get() {
            return Ok(self.until_val.borrow());
        }
        self.f_until_val.set(true);
        let _pos = _io.pos();
        _io.seek(((_io.pos() as i32) + (12 as i32)) as usize)?;
        *self.until_val.borrow_mut() = _io.read_s2le()?.into();
        _io.seek(_pos)?;
        Ok(self.until_val.borrow())
    }
}
impl InstanceInRepeatUntil {
    pub fn entries(&self) -> Ref<'_, Vec<i16>> {
        self.entries.borrow()
    }
}
impl InstanceInRepeatUntil {
    pub fn _io(&self) -> Ref<'_, BytesReader> {
        self._io.borrow()
    }
}
