<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class DefaultEndianExprInherited extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Struct $_parent = null, ?\Kaitai\Struct\Tests\DefaultEndianExprInherited $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_docs = [];
            $i = 0;
            while (!$this->_io->isEof()) {
                $this->_m_docs[] = new \Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc($this->_io, $this, $this->_root);
                $i++;
            }
        }
        protected $_m_docs;
        public function docs() { return $this->_m_docs; }
    }
}

namespace Kaitai\Struct\Tests\DefaultEndianExprInherited {
    class Doc extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\DefaultEndianExprInherited $_parent = null, ?\Kaitai\Struct\Tests\DefaultEndianExprInherited $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_indicator = $this->_io->readBytes(2);
            $this->_m_main = new \Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc\MainObj($this->_io, $this, $this->_root);
        }
        protected $_m_indicator;
        protected $_m_main;
        public function indicator() { return $this->_m_indicator; }
        public function main() { return $this->_m_main; }
    }
}

namespace Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc {
    class MainObj extends \Kaitai\Struct\Struct {
        protected $_m__is_le;

        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc $_parent = null, ?\Kaitai\Struct\Tests\DefaultEndianExprInherited $_root = null) {
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
            $this->_m_insides = new \Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc\MainObj\SubObj($this->_io, $this, $this->_root, $this->_m__is_le);
        }

        private function _readBE() {
            $this->_m_insides = new \Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc\MainObj\SubObj($this->_io, $this, $this->_root, $this->_m__is_le);
        }
        protected $_m_insides;
        public function insides() { return $this->_m_insides; }
    }
}

namespace Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc\MainObj {
    class SubObj extends \Kaitai\Struct\Struct {
        protected $_m__is_le;

        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc\MainObj $_parent = null, ?\Kaitai\Struct\Tests\DefaultEndianExprInherited $_root = null, $is_le = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m__is_le = $is_le;
            $this->_read();
        }

        private function _read() {

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
            $this->_m_more = new \Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc\MainObj\SubObj\SubsubObj($this->_io, $this, $this->_root, $this->_m__is_le);
        }

        private function _readBE() {
            $this->_m_someInt = $this->_io->readU4be();
            $this->_m_more = new \Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc\MainObj\SubObj\SubsubObj($this->_io, $this, $this->_root, $this->_m__is_le);
        }
        protected $_m_someInt;
        protected $_m_more;
        public function someInt() { return $this->_m_someInt; }
        public function more() { return $this->_m_more; }
    }
}

namespace Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc\MainObj\SubObj {
    class SubsubObj extends \Kaitai\Struct\Struct {
        protected $_m__is_le;

        public function __construct(\Kaitai\Struct\Stream $_io, ?\Kaitai\Struct\Tests\DefaultEndianExprInherited\Doc\MainObj\SubObj $_parent = null, ?\Kaitai\Struct\Tests\DefaultEndianExprInherited $_root = null, $is_le = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_m__is_le = $is_le;
            $this->_read();
        }

        private function _read() {

            if (is_null($this->_m__is_le)) {
                throw new \Kaitai\Struct\Error\UndecidedEndiannessError;
            } else if ($this->_m__is_le) {
                $this->_readLE();
            } else {
                $this->_readBE();
            }
        }

        private function _readLE() {
            $this->_m_someInt1 = $this->_io->readU2le();
            $this->_m_someInt2 = $this->_io->readU2le();
        }

        private function _readBE() {
            $this->_m_someInt1 = $this->_io->readU2be();
            $this->_m_someInt2 = $this->_io->readU2be();
        }
        protected $_m_someInst;
        public function someInst() {
            if ($this->_m_someInst !== null)
                return $this->_m_someInst;
            $_pos = $this->_io->pos();
            $this->_io->seek(2);
            if ($this->_m__is_le) {
                $this->_m_someInst = $this->_io->readU4le();
            } else {
                $this->_m_someInst = $this->_io->readU4be();
            }
            $this->_io->seek($_pos);
            return $this->_m_someInst;
        }
        protected $_m_someInt1;
        protected $_m_someInt2;
        public function someInt1() { return $this->_m_someInt1; }
        public function someInt2() { return $this->_m_someInt2; }
    }
}
