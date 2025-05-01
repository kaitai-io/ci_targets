<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class RepeatUntilComplex extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\RepeatUntilComplex $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_first = [];
            $i = 0;
            do {
                $_ = new \Kaitai\Struct\Tests\RepeatUntilComplex\TypeU1($this->_io, $this, $this->_root);
                $this->_m_first[] = $_;
                $i++;
            } while (!($_->count() == 0));
            $this->_m_second = [];
            $i = 0;
            do {
                $_ = new \Kaitai\Struct\Tests\RepeatUntilComplex\TypeU2($this->_io, $this, $this->_root);
                $this->_m_second[] = $_;
                $i++;
            } while (!($_->count() == 0));
            $this->_m_third = [];
            $i = 0;
            do {
                $_ = $this->_io->readU1();
                $this->_m_third[] = $_;
                $i++;
            } while (!($_ == 0));
        }
        protected $_m_first;
        protected $_m_second;
        protected $_m_third;
        public function first() { return $this->_m_first; }
        public function second() { return $this->_m_second; }
        public function third() { return $this->_m_third; }
    }
}

namespace Kaitai\Struct\Tests\RepeatUntilComplex {
    class TypeU1 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\RepeatUntilComplex $_parent = null, ?\Kaitai\Struct\Tests\RepeatUntilComplex $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_count = $this->_io->readU1();
            $this->_m_values = [];
            $n = $this->count();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_values[] = $this->_io->readU1();
            }
        }
        protected $_m_count;
        protected $_m_values;
        public function count() { return $this->_m_count; }
        public function values() { return $this->_m_values; }
    }
}

namespace Kaitai\Struct\Tests\RepeatUntilComplex {
    class TypeU2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\RepeatUntilComplex $_parent = null, ?\Kaitai\Struct\Tests\RepeatUntilComplex $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_count = $this->_io->readU2le();
            $this->_m_values = [];
            $n = $this->count();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_values[] = $this->_io->readU2le();
            }
        }
        protected $_m_count;
        protected $_m_values;
        public function count() { return $this->_m_count; }
        public function values() { return $this->_m_values; }
    }
}
