<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class DefaultEndianExprIsLe extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\DefaultEndianExprIsLe $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_docs = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_docs[] = new \Kaitai\Struct\Tests\DefaultEndianExprIsLe\Doc($this->_io, $this, $this->_root);
                $i++;
            }
        }
        protected $_m_docs;
        public function docs() { return $this->_m_docs; }
    }
}

namespace Kaitai\Struct\Tests\DefaultEndianExprIsLe {
    class Doc extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\DefaultEndianExprIsLe $_parent = null, ?\Kaitai\Struct\Tests\DefaultEndianExprIsLe $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_indicator = $this->_io->readBytes(2);
            $this->_m_main = new \Kaitai\Struct\Tests\DefaultEndianExprIsLe\Doc\MainObj($this->_io, $this, $this->_root);
        }
        protected $_m_indicator;
        protected $_m_main;
        public function indicator() { return $this->_m_indicator; }
        public function main() { return $this->_m_main; }
    }
}

namespace Kaitai\Struct\Tests\DefaultEndianExprIsLe\Doc {
    class MainObj extends \Kaitai\Struct\Struct {
        protected $_m__is_le;

        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\DefaultEndianExprIsLe\Doc $_parent = null, ?\Kaitai\Struct\Tests\DefaultEndianExprIsLe $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            switch ($this->_parent()->indicator()) {
                case "\x49\x49":
                    $this->_m__is_le = true;
                    break;
                default:
                    $this->_m__is_le = false;
                    break;
            }

            if (is_null($this->_m__is_le)) {
                throw new \Kaitai\Struct\Error\UndecidedEndiannessError;
            } else if ($this->_m__is_le) {
                $this->_readLE();
            } else {
                $this->_readBE();
            }
        }

        private function _readLE() {
            $this->_m_someInt = $this->_io->readU4le();
            $this->_m_someIntBe = $this->_io->readU2be();
            $this->_m_someIntLe = $this->_io->readU2le();
        }

        private function _readBE() {
            $this->_m_someInt = $this->_io->readU4be();
            $this->_m_someIntBe = $this->_io->readU2be();
            $this->_m_someIntLe = $this->_io->readU2le();
        }
        protected $_m_someInt;
        protected $_m_someIntBe;
        protected $_m_someIntLe;
        public function someInt() { return $this->_m_someInt; }
        public function someIntBe() { return $this->_m_someIntBe; }
        public function someIntLe() { return $this->_m_someIntLe; }
    }
}
