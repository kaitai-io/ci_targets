<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class MultipleUse extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\MultipleUse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_t1 = new \Kaitai\Struct\Tests\MultipleUse\Type1($this->_io, $this, $this->_root);
            $this->_m_t2 = new \Kaitai\Struct\Tests\MultipleUse\Type2($this->_io, $this, $this->_root);
        }
        protected $_m_t1;
        protected $_m_t2;
        public function t1() { return $this->_m_t1; }
        public function t2() { return $this->_m_t2; }
    }
}

namespace Kaitai\Struct\Tests\MultipleUse {
    class Multi extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\MultipleUse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readS4le();
        }
        protected $_m_value;
        public function value() { return $this->_m_value; }
    }
}

namespace Kaitai\Struct\Tests\MultipleUse {
    class Type1 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\MultipleUse $_parent = null, \Kaitai\Struct\Tests\MultipleUse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_firstUse = new \Kaitai\Struct\Tests\MultipleUse\Multi($this->_io, $this, $this->_root);
        }
        protected $_m_firstUse;
        public function firstUse() { return $this->_m_firstUse; }
    }
}

namespace Kaitai\Struct\Tests\MultipleUse {
    class Type2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\MultipleUse $_parent = null, \Kaitai\Struct\Tests\MultipleUse $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_secondUse;
        public function secondUse() {
            if ($this->_m_secondUse !== null)
                return $this->_m_secondUse;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_secondUse = new \Kaitai\Struct\Tests\MultipleUse\Multi($this->_io, $this, $this->_root);
            $this->_io->seek($_pos);
            return $this->_m_secondUse;
        }
    }
}
