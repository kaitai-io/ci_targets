<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NavParentVsValueInst extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\NavParentVsValueInst $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_s1 = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesTerm(124, false, true, true), "UTF-8");
            $this->_m_child = new \Kaitai\Struct\Tests\NavParentVsValueInst\ChildObj($this->_io, $this, $this->_root);
        }
        protected $_m_s1;
        protected $_m_child;
        public function s1() { return $this->_m_s1; }
        public function child() { return $this->_m_child; }
    }
}

namespace Kaitai\Struct\Tests\NavParentVsValueInst {
    class ChildObj extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\NavParentVsValueInst $_parent = null, \Kaitai\Struct\Tests\NavParentVsValueInst $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_doSomething;
        public function doSomething() {
            if ($this->_m_doSomething !== null)
                return $this->_m_doSomething;
            $this->_m_doSomething = ($this->_parent()->s1() == "foo" ? true : false);
            return $this->_m_doSomething;
        }
    }
}
