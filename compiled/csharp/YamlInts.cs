// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class YamlInts : KaitaiStruct
    {
        public static YamlInts FromFile(string fileName)
        {
            return new YamlInts(new KaitaiStream(fileName));
        }

        public YamlInts(KaitaiStream p__io, KaitaiStruct p__parent = null, YamlInts p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_testU4Dec = false;
            f_testU4Hex = false;
            f_testU8Dec = false;
            f_testU8Hex = false;
            _read();
        }
        private void _read()
        {
        }
        private bool f_testU4Dec;
        private int _testU4Dec;
        public int TestU4Dec
        {
            get
            {
                if (f_testU4Dec)
                    return _testU4Dec;
                _testU4Dec = (int) (4294967295);
                f_testU4Dec = true;
                return _testU4Dec;
            }
        }
        private bool f_testU4Hex;
        private int _testU4Hex;
        public int TestU4Hex
        {
            get
            {
                if (f_testU4Hex)
                    return _testU4Hex;
                _testU4Hex = (int) (4294967295);
                f_testU4Hex = true;
                return _testU4Hex;
            }
        }
        private bool f_testU8Dec;
        private int _testU8Dec;
        public int TestU8Dec
        {
            get
            {
                if (f_testU8Dec)
                    return _testU8Dec;
                _testU8Dec = (int) (18446744073709551615);
                f_testU8Dec = true;
                return _testU8Dec;
            }
        }
        private bool f_testU8Hex;
        private int _testU8Hex;
        public int TestU8Hex
        {
            get
            {
                if (f_testU8Hex)
                    return _testU8Hex;
                _testU8Hex = (int) (18446744073709551615);
                f_testU8Hex = true;
                return _testU8Hex;
            }
        }
        private YamlInts m_root;
        private KaitaiStruct m_parent;
        public YamlInts M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
