<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class SwitchRepeatExprInvalid extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\SwitchRepeatExprInvalid $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_codes = [];
            $n = 3;
            for ($i = 0; $i < $n; $i++) {
                $this->_m_codes[] = $this->_io->readU1();
            }
            $this->_m__raw_body = [];
            $this->_m_body = [];
            $n = 3;
            for ($i = 0; $i < $n; $i++) {
                switch ($this->codes()[$i]) {
                    case 1:
                        $this->_m__raw_body[] = $this->_io->readBytes(4);
                        $_io__raw_body = new \Kaitai\Struct\Stream(end($this->_m__raw_body));
                        $this->_m_body[] = new \Kaitai\Struct\Tests\SwitchRepeatExprInvalid\One($_io__raw_body, $this, $this->_root);
                        break;
                    case 2:
                        $this->_m__raw_body[] = $this->_io->readBytes(4);
                        $_io__raw_body = new \Kaitai\Struct\Stream(end($this->_m__raw_body));
                        $this->_m_body[] = new \Kaitai\Struct\Tests\SwitchRepeatExprInvalid\Two($_io__raw_body, $this, $this->_root);
                        break;
                    default:
                        $this->_m_body[] = $this->_io->readBytes(4);
                        break;
                }
            }
        }
        public function codes() { return $this->_m_codes; }
        public function body() { return $this->_m_body; }
        public function _raw_body() { return $this->_m__raw_body; }
        protected $_m_codes;
        protected $_m_body;
        protected $_m__raw_body;
    }
}

namespace Kaitai\Struct\Tests\SwitchRepeatExprInvalid {
    class One extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchRepeatExprInvalid $_parent = null, ?\Kaitai\Struct\Tests\SwitchRepeatExprInvalid $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_first = $this->_io->readBytesFull();
        }
        public function first() { return $this->_m_first; }
        protected $_m_first;
    }
}

namespace Kaitai\Struct\Tests\SwitchRepeatExprInvalid {
    class Two extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\SwitchRepeatExprInvalid $_parent = null, ?\Kaitai\Struct\Tests\SwitchRepeatExprInvalid $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_second = $this->_io->readBytesFull();
        }
        public function second() { return $this->_m_second; }
        protected $_m_second;
    }
}
