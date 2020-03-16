<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class ExprBits extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\ExprBits $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_enumSeq = $this->_io->readBitsInt(2);
            $this->_m_a = $this->_io->readBitsInt(3);
            $this->_io->alignToByte();
            $this->_m_byteSize = $this->_io->readBytes($this->a());
            $this->_m_repeatExpr = [];
            $n = $this->a();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_repeatExpr[] = $this->_io->readS1();
            }
            switch ($this->a()) {
                case 2:
                    $this->_m_switchOnType = $this->_io->readS1();
                    break;
            }
            $this->_m_switchOnEndian = new \Kaitai\Struct\Tests\ExprBits\EndianSwitch($this->_io, $this, $this->_root);
        }
        protected $_m_enumInst;
        public function enumInst() {
            if ($this->_m_enumInst !== null)
                return $this->_m_enumInst;
            $this->_m_enumInst = $this->a();
            return $this->_m_enumInst;
        }
        protected $_m_instPos;
        public function instPos() {
            if ($this->_m_instPos !== null)
                return $this->_m_instPos;
            $_pos = $this->_io->pos();
            $this->_io->seek($this->a());
            $this->_m_instPos = $this->_io->readS1();
            $this->_io->seek($_pos);
            return $this->_m_instPos;
        }
        protected $_m_enumSeq;
        protected $_m_a;
        protected $_m_byteSize;
        protected $_m_repeatExpr;
        protected $_m_switchOnType;
        protected $_m_switchOnEndian;
        public function enumSeq() { return $this->_m_enumSeq; }
        public function a() { return $this->_m_a; }
        public function byteSize() { return $this->_m_byteSize; }
        public function repeatExpr() { return $this->_m_repeatExpr; }
        public function switchOnType() { return $this->_m_switchOnType; }
        public function switchOnEndian() { return $this->_m_switchOnEndian; }
    }
}

namespace Kaitai\Struct\Tests\ExprBits {
    class EndianSwitch extends \Kaitai\Struct\Struct {
        protected $_m__is_le;

        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\ExprBits $_parent = null, \Kaitai\Struct\Tests\ExprBits $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            switch ($this->_parent()->a()) {
                case 1:
                    $this->_m__is_le = true;
                    break;
                case 2:
                    $this->_m__is_le = false;
                    break;
            }

            if (is_null($this->_m__is_le)) {
                throw new \RuntimeException("Unable to decide on endianness");
            } else if ($this->_m__is_le) {
                $this->_readLE();
            } else {
                $this->_readBE();
            }
        }

        private function _readLE() {
            $this->_m_foo = $this->_io->readS2le();
        }

        private function _readBE() {
            $this->_m_foo = $this->_io->readS2be();
        }
        protected $_m_foo;
        public function foo() { return $this->_m_foo; }
    }
}

namespace Kaitai\Struct\Tests\ExprBits {
    class Items {
        const FOO = 1;
        const BAR = 2;
    }
}
