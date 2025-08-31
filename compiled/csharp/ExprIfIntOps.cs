// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ExprIfIntOps : KaitaiStruct
    {
        public static ExprIfIntOps FromFile(string fileName)
        {
            return new ExprIfIntOps(new KaitaiStream(fileName));
        }

        public ExprIfIntOps(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprIfIntOps p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_bytesSubKey = false;
            f_itemsSubKey = false;
            _read();
        }
        private void _read()
        {
            if (true) {
                _key = m_io.ReadU8le();
            }
            _skip = m_io.ReadBytes(8);
            __raw_bytes = m_io.ReadBytes(8);
            _bytes = m_io.ProcessXor(__raw_bytes, Key);
            _items = new List<sbyte>();
            for (var i = 0; i < 4; i++)
            {
                _items.Add(m_io.ReadS1());
            }
        }
        private bool f_bytesSubKey;
        private byte _bytesSubKey;
        public byte BytesSubKey
        {
            get
            {
                if (f_bytesSubKey)
                    return _bytesSubKey;
                f_bytesSubKey = true;
                _bytesSubKey = (byte) (Bytes[Key]);
                return _bytesSubKey;
            }
        }
        private bool f_itemsSubKey;
        private sbyte _itemsSubKey;
        public sbyte ItemsSubKey
        {
            get
            {
                if (f_itemsSubKey)
                    return _itemsSubKey;
                f_itemsSubKey = true;
                _itemsSubKey = (sbyte) (Items[Key]);
                return _itemsSubKey;
            }
        }
        private ulong? _key;
        private byte[] _skip;
        private byte[] _bytes;
        private List<sbyte> _items;
        private ExprIfIntOps m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_bytes;
        public ulong? Key { get { return _key; } }
        public byte[] Skip { get { return _skip; } }
        public byte[] Bytes { get { return _bytes; } }
        public List<sbyte> Items { get { return _items; } }
        public ExprIfIntOps M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawBytes { get { return __raw_bytes; } }
    }
}
