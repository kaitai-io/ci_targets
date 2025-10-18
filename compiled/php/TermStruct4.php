<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class TermStruct4 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\TermStruct4 $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_s1 = $this->_io->readBytes(3);
            $_io__raw_s1 = new \Kaitai\Struct\Stream($this->_m__raw_s1);
            $this->_m_s1 = new \Kaitai\Struct\Tests\TermStruct4\S1Type($_io__raw_s1, $this, $this->_root);
            $this->_m_skipTerm1 = $this->_io->readU1();
            $this->_m__raw_s2 = $this->_io->readBytes(3);
            $_io__raw_s2 = new \Kaitai\Struct\Stream($this->_m__raw_s2);
            $this->_m_s2 = new \Kaitai\Struct\Tests\TermStruct4\S2Type($_io__raw_s2, $this, $this->_root);
            $this->_m_skipTerm2 = $this->_io->readU1();
            $this->_m__raw_s3 = $this->_io->readBytes(3);
            $_io__raw_s3 = new \Kaitai\Struct\Stream($this->_m__raw_s3);
            $this->_m_s3 = new \Kaitai\Struct\Tests\TermStruct4\S3Type($_io__raw_s3, $this, $this->_root);
        }
        public function s1() { return $this->_m_s1; }
        public function skipTerm1() { return $this->_m_skipTerm1; }
        public function s2() { return $this->_m_s2; }
        public function skipTerm2() { return $this->_m_skipTerm2; }
        public function s3() { return $this->_m_s3; }
        public function _raw_s1() { return $this->_m__raw_s1; }
        public function _raw_s2() { return $this->_m__raw_s2; }
        public function _raw_s3() { return $this->_m__raw_s3; }
        protected $_m_s1;
        protected $_m_skipTerm1;
        protected $_m_s2;
        protected $_m_skipTerm2;
        protected $_m_s3;
        protected $_m__raw_s1;
        protected $_m__raw_s2;
        protected $_m__raw_s3;
    }
}

namespace Kaitai\Struct\Tests\TermStruct4 {
    class BytesWrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\TermStruct4 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_value = $this->_io->readBytesFull();
        }
        public function value() { return $this->_m_value; }
        protected $_m_value;
    }
}

namespace Kaitai\Struct\Tests\TermStruct4 {
    class S1Type extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\TermStruct4 $_parent = null, ?\Kaitai\Struct\Tests\TermStruct4 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_value = $this->_io->readBytesTerm(124, false, true, false);
            $_io__raw_value = new \Kaitai\Struct\Stream($this->_m__raw_value);
            $this->_m_value = new \Kaitai\Struct\Tests\TermStruct4\BytesWrapper($_io__raw_value, $this, $this->_root);
        }
        public function value() { return $this->_m_value; }
        public function _raw_value() { return $this->_m__raw_value; }
        protected $_m_value;
        protected $_m__raw_value;
    }
}

namespace Kaitai\Struct\Tests\TermStruct4 {
    class S2Type extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\TermStruct4 $_parent = null, ?\Kaitai\Struct\Tests\TermStruct4 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_value = $this->_io->readBytesTerm(124, false, false, false);
            $_io__raw_value = new \Kaitai\Struct\Stream($this->_m__raw_value);
            $this->_m_value = new \Kaitai\Struct\Tests\TermStruct4\BytesWrapper($_io__raw_value, $this, $this->_root);
        }
        public function value() { return $this->_m_value; }
        public function _raw_value() { return $this->_m__raw_value; }
        protected $_m_value;
        protected $_m__raw_value;
    }
}

namespace Kaitai\Struct\Tests\TermStruct4 {
    class S3Type extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\TermStruct4 $_parent = null, ?\Kaitai\Struct\Tests\TermStruct4 $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m__raw_value = $this->_io->readBytesTerm(64, true, true, false);
            $_io__raw_value = new \Kaitai\Struct\Stream($this->_m__raw_value);
            $this->_m_value = new \Kaitai\Struct\Tests\TermStruct4\BytesWrapper($_io__raw_value, $this, $this->_root);
        }
        public function value() { return $this->_m_value; }
        public function _raw_value() { return $this->_m__raw_value; }
        protected $_m_value;
        protected $_m__raw_value;
    }
}
