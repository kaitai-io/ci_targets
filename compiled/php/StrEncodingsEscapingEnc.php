<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace Kaitai\Struct\Tests {
    class StrEncodingsEscapingEnc extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Kaitai\Struct\Tests\StrEncodingsEscapingEnc $_root = null) {
            parent::__construct($_io, $_parent, $_root === null ? $this : $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_lenOf1 = $this->_io->readU2le();
            $this->_m__raw_str1 = $this->_io->readBytes($this->lenOf1());
            $_io__raw_str1 = new \Kaitai\Struct\Stream($this->_m__raw_str1);
            $this->_m_str1 = new \Kaitai\Struct\Tests\StrEncodingsEscapingEnc\Str1Wrapper($_io__raw_str1, $this, $this->_root);
            $this->_m_lenOf2 = $this->_io->readU2le();
            $this->_m__raw_str2 = $this->_io->readBytes($this->lenOf2());
            $_io__raw_str2 = new \Kaitai\Struct\Stream($this->_m__raw_str2);
            $this->_m_str2 = new \Kaitai\Struct\Tests\StrEncodingsEscapingEnc\Str2Wrapper($_io__raw_str2, $this, $this->_root);
            $this->_m_lenOf3 = $this->_io->readU2le();
            $this->_m__raw_str3 = $this->_io->readBytes($this->lenOf3());
            $_io__raw_str3 = new \Kaitai\Struct\Stream($this->_m__raw_str3);
            $this->_m_str3 = new \Kaitai\Struct\Tests\StrEncodingsEscapingEnc\Str3Wrapper($_io__raw_str3, $this, $this->_root);
            $this->_m_lenOf4 = $this->_io->readU2le();
            $this->_m__raw_str4 = $this->_io->readBytes($this->lenOf4());
            $_io__raw_str4 = new \Kaitai\Struct\Stream($this->_m__raw_str4);
            $this->_m_str4 = new \Kaitai\Struct\Tests\StrEncodingsEscapingEnc\Str4Wrapper($_io__raw_str4, $this, $this->_root);
        }
        protected $_m_lenOf1;
        protected $_m_str1;
        protected $_m_lenOf2;
        protected $_m_str2;
        protected $_m_lenOf3;
        protected $_m_str3;
        protected $_m_lenOf4;
        protected $_m_str4;
        protected $_m__raw_str1;
        protected $_m__raw_str2;
        protected $_m__raw_str3;
        protected $_m__raw_str4;
        public function lenOf1() { return $this->_m_lenOf1; }
        public function str1() { return $this->_m_str1; }
        public function lenOf2() { return $this->_m_lenOf2; }
        public function str2() { return $this->_m_str2; }
        public function lenOf3() { return $this->_m_lenOf3; }
        public function str3() { return $this->_m_str3; }
        public function lenOf4() { return $this->_m_lenOf4; }
        public function str4() { return $this->_m_str4; }
        public function _raw_str1() { return $this->_m__raw_str1; }
        public function _raw_str2() { return $this->_m__raw_str2; }
        public function _raw_str3() { return $this->_m__raw_str3; }
        public function _raw_str4() { return $this->_m__raw_str4; }
    }
}

namespace Kaitai\Struct\Tests\StrEncodingsEscapingEnc {
    class Str1Wrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\StrEncodingsEscapingEnc $_parent = null, \Kaitai\Struct\Tests\StrEncodingsEscapingEnc $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_v;
        public function v() {
            if ($this->_m_v !== null)
                return $this->_m_v;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_v = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesFull(), "ASCII\\x");
            $this->_io->seek($_pos);
            return $this->_m_v;
        }
    }
}

namespace Kaitai\Struct\Tests\StrEncodingsEscapingEnc {
    class Str2Wrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\StrEncodingsEscapingEnc $_parent = null, \Kaitai\Struct\Tests\StrEncodingsEscapingEnc $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_v;
        public function v() {
            if ($this->_m_v !== null)
                return $this->_m_v;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_v = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesFull(), "UTF-8\'x");
            $this->_io->seek($_pos);
            return $this->_m_v;
        }
    }
}

namespace Kaitai\Struct\Tests\StrEncodingsEscapingEnc {
    class Str3Wrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\StrEncodingsEscapingEnc $_parent = null, \Kaitai\Struct\Tests\StrEncodingsEscapingEnc $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_v;
        public function v() {
            if ($this->_m_v !== null)
                return $this->_m_v;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_v = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesFull(), "SJIS\"x");
            $this->_io->seek($_pos);
            return $this->_m_v;
        }
    }
}

namespace Kaitai\Struct\Tests\StrEncodingsEscapingEnc {
    class Str4Wrapper extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Tests\StrEncodingsEscapingEnc $_parent = null, \Kaitai\Struct\Tests\StrEncodingsEscapingEnc $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
        }
        protected $_m_v;
        public function v() {
            if ($this->_m_v !== null)
                return $this->_m_v;
            $_pos = $this->_io->pos();
            $this->_io->seek(0);
            $this->_m_v = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytesFull(), "IBM437\nx");
            $this->_io->seek($_pos);
            return $this->_m_v;
        }
    }
}
