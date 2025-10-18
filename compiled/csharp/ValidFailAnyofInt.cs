// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailAnyofInt : KaitaiStruct
    {
        public static ValidFailAnyofInt FromFile(string fileName)
        {
            return new ValidFailAnyofInt(new KaitaiStream(fileName));
        }

        public ValidFailAnyofInt(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailAnyofInt p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadU1();
            if (!( ((_foo == 5) || (_foo == 6) || (_foo == 7) || (_foo == 8) || (_foo == 10) || (_foo == 11) || (_foo == 12) || (_foo == 47)) ))
            {
                throw new ValidationNotAnyOfError(_foo, m_io, "/seq/0");
            }
        }
        public byte Foo { get { return _foo; } }
        public ValidFailAnyofInt M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte _foo;
        private ValidFailAnyofInt m_root;
        private KaitaiStruct m_parent;
    }
}
