<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RecursiveOne extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\RecursiveOne $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readU1();
            switch (($this->one() & 3)) {
                case 0:
                    $this->_m_next = new \Kaitai\Struct\Tests\RecursiveOne($this->_io);
                    break;
                case 1:
                    $this->_m_next = new \Kaitai\Struct\Tests\RecursiveOne($this->_io);
                    break;
                case 2:
                    $this->_m_next = new \Kaitai\Struct\Tests\RecursiveOne($this->_io);
                    break;
                case 3:
                    $this->_m_next = new \Kaitai\Struct\Tests\RecursiveOne\Fini($this->_io, $this, $this->_root);
                    break;
            }
        }
        protected $_m_one;
        protected $_m_next;
        public function one() { return $this->_m_one; }
        public function next() { return $this->_m_next; }
    }
}

namespace Kaitai\Struct\Tests\RecursiveOne {
    class Fini extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\RecursiveOne $_parent = null, \Kaitai\Struct\Tests\RecursiveOne $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_finisher = $this->_io->readU2le();
        }
        protected $_m_finisher;
        public function finisher() { return $this->_m_finisher; }
    }
}
