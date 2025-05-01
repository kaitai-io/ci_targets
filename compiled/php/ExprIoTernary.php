<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprIoTernary extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\ExprIoTernary $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_flag = $this->_io->readU1();
            $this->_m__raw_obj1 = $this->_io->readBytes(4);
            $_io__raw_obj1 = new \Kaitai\Struct\Stream($this->_m__raw_obj1);
            $this->_m_obj1 = new \Kaitai\Struct\Tests\ExprIoTernary\One($_io__raw_obj1, $this, $this->_root);
            $this->_m__raw_obj2 = $this->_io->readBytes(8);
            $_io__raw_obj2 = new \Kaitai\Struct\Stream($this->_m__raw_obj2);
            $this->_m_obj2 = new \Kaitai\Struct\Tests\ExprIoTernary\Two($_io__raw_obj2, $this, $this->_root);
        }
        protected $_m_oneOrTwoIo;
        public function oneOrTwoIo() {
            if ($this->_m_oneOrTwoIo !== null)
                return $this->_m_oneOrTwoIo;
            $this->_m_oneOrTwoIo = ($this->flag() == 64 ? $this->obj1() : $this->obj2())->_io();
            return $this->_m_oneOrTwoIo;
        }
        protected $_m_oneOrTwoIoSize1;
        public function oneOrTwoIoSize1() {
            if ($this->_m_oneOrTwoIoSize1 !== null)
                return $this->_m_oneOrTwoIoSize1;
            $this->_m_oneOrTwoIoSize1 = ($this->flag() == 64 ? $this->obj1() : $this->obj2())->_io()->size();
            return $this->_m_oneOrTwoIoSize1;
        }
        protected $_m_oneOrTwoIoSize2;
        public function oneOrTwoIoSize2() {
            if ($this->_m_oneOrTwoIoSize2 !== null)
                return $this->_m_oneOrTwoIoSize2;
            $this->_m_oneOrTwoIoSize2 = $this->oneOrTwoIo()->size();
            return $this->_m_oneOrTwoIoSize2;
        }
        protected $_m_oneOrTwoIoSizeAdd3;
        public function oneOrTwoIoSizeAdd3() {
            if ($this->_m_oneOrTwoIoSizeAdd3 !== null)
                return $this->_m_oneOrTwoIoSizeAdd3;
            $this->_m_oneOrTwoIoSizeAdd3 = ($this->flag() == 64 ? $this->obj1() : $this->obj2())->_io()->size() + 3;
            return $this->_m_oneOrTwoIoSizeAdd3;
        }
        protected $_m_oneOrTwoObj;
        public function oneOrTwoObj() {
            if ($this->_m_oneOrTwoObj !== null)
                return $this->_m_oneOrTwoObj;
            $this->_m_oneOrTwoObj = ($this->flag() == 64 ? $this->obj1() : $this->obj2());
            return $this->_m_oneOrTwoObj;
        }
        protected $_m_flag;
        protected $_m_obj1;
        protected $_m_obj2;
        protected $_m__raw_obj1;
        protected $_m__raw_obj2;
        public function flag() { return $this->_m_flag; }
        public function obj1() { return $this->_m_obj1; }
        public function obj2() { return $this->_m_obj2; }
        public function _raw_obj1() { return $this->_m__raw_obj1; }
        public function _raw_obj2() { return $this->_m__raw_obj2; }
    }
}

namespace Kaitai\Struct\Tests\ExprIoTernary {
    class One extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ExprIoTernary $_parent = null, ?\Kaitai\Struct\Tests\ExprIoTernary $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_one = $this->_io->readU1();
        }
        protected $_m_one;
        public function one() { return $this->_m_one; }
    }
}

namespace Kaitai\Struct\Tests\ExprIoTernary {
    class Two extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\ExprIoTernary $_parent = null, ?\Kaitai\Struct\Tests\ExprIoTernary $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_two = $this->_io->readU1();
        }
        protected $_m_two;
        public function two() { return $this->_m_two; }
    }
}
