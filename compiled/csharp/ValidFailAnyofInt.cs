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
            if (!( ((Foo == 5) || (Foo == 6) || (Foo == 7) || (Foo == 8) || (Foo == 10) || (Foo == 11) || (Foo == 12) || (Foo == 47)) ))
            {
                throw new ValidationNotAnyOfError(Foo, M_Io, "/seq/0");
            }
        }
        private byte _foo;
        private ValidFailAnyofInt m_root;
        private KaitaiStruct m_parent;
        public byte Foo { get { return _foo; } }
        public ValidFailAnyofInt M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
