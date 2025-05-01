<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class NonStandard extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\NonStandard $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_foo = $this->_io->readU1();
            switch ($this->foo()) {
                case 42:
                    $this->_m_bar = $this->_io->readU2le();
                    break;
                case 43:
                    $this->_m_bar = $this->_io->readU4le();
                    break;
            }
        }
        protected $_m_pi;
        public function pi() {
            if ($this->_m_pi !== null)
                return $this->_m_pi;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_pi = $this->_io->readU1();
            $this->_io->seek($_pos);
            return $this->_m_pi;
        }
        protected $_m_vi;
        public function vi() {
            if ($this->_m_vi !== null)
                return $this->_m_vi;
            $this->_m_vi = $this->foo();
            return $this->_m_vi;
        }
        protected $_m_foo;
        protected $_m_bar;
        public function foo() { return $this->_m_foo; }
        public function bar() { return $this->_m_bar; }
    }
}
