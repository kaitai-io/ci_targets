<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprIfIntOps extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprIfIntOps $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_skip = $this->_io->readBytes(2);
            if (true) {
                $this->_m_it = $this->_io->readS2le();
            }
            if (true) {
                $this->_m_boxed = $this->_io->readS2le();
            }
        }
        protected $_m_isEqPrim;
        public function isEqPrim() {
            if ($this->_m_isEqPrim !== null)
                return $this->_m_isEqPrim;
            $this->_m_isEqPrim = $this->it() == 16705;
            return $this->_m_isEqPrim;
        }
        protected $_m_isEqBoxed;
        public function isEqBoxed() {
            if ($this->_m_isEqBoxed !== null)
                return $this->_m_isEqBoxed;
            $this->_m_isEqBoxed = $this->it() == $this->boxed();
            return $this->_m_isEqBoxed;
        }
        protected $_m_skip;
        protected $_m_it;
        protected $_m_boxed;
        public function skip() { return $this->_m_skip; }
        public function it() { return $this->_m_it; }
        public function boxed() { return $this->_m_boxed; }
    }
}
