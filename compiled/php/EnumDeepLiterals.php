<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class EnumDeepLiterals extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumDeepLiterals $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_pet1 = $this->_io->readU4le();
            $this->_m_pet2 = $this->_io->readU4le();
        }
        protected $_m_isPet1Ok;
        public function isPet1Ok() {
            if ($this->_m_isPet1Ok !== null)
                return $this->_m_isPet1Ok;
            $this->_m_isPet1Ok = $this->pet1() == \Kaitai\Struct\Tests\EnumDeepLiterals\Container1\Animal::CAT;
            return $this->_m_isPet1Ok;
        }
        protected $_m_isPet2Ok;
        public function isPet2Ok() {
            if ($this->_m_isPet2Ok !== null)
                return $this->_m_isPet2Ok;
            $this->_m_isPet2Ok = $this->pet2() == \Kaitai\Struct\Tests\EnumDeepLiterals\Container1\Container2\Animal::HARE;
            return $this->_m_isPet2Ok;
        }
        protected $_m_pet1;
        protected $_m_pet2;
        public function pet1() { return $this->_m_pet1; }
        public function pet2() { return $this->_m_pet2; }
    }
}

namespace Kaitai\Struct\Tests\EnumDeepLiterals {
    class Container1 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumDeepLiterals $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace Kaitai\Struct\Tests\EnumDeepLiterals\Container1 {
    class Container2 extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\EnumDeepLiterals $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
    }
}

namespace Kaitai\Struct\Tests\EnumDeepLiterals\Container1\Container2 {
    class Animal {
        const CANARY = 4;
        const TURTLE = 7;
        const HARE = 12;
    }
}

namespace Kaitai\Struct\Tests\EnumDeepLiterals\Container1 {
    class Animal {
        const DOG = 4;
        const CAT = 7;
        const CHICKEN = 12;
    }
}
