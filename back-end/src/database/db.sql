PGDMP  &                    }            Univery    16.4    16.4 )               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    17086    Univery    DATABASE     �   CREATE DATABASE "Univery" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Univery";
                postgres    false            �            1259    17087    cliente    TABLE     �   CREATE TABLE public.cliente (
    nome text NOT NULL,
    senha text NOT NULL,
    email text NOT NULL,
    telefone text NOT NULL,
    id integer NOT NULL,
    tipo text NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            �            1259    17094    cliente_id_seq    SEQUENCE     �   ALTER TABLE public.cliente ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    17134    entregador_estabelecimento    TABLE     �   CREATE TABLE public.entregador_estabelecimento (
    id integer NOT NULL,
    id_cliente integer NOT NULL,
    id_estabelecimento integer NOT NULL,
    disponivel boolean DEFAULT false NOT NULL
);
 .   DROP TABLE public.entregador_estabelecimento;
       public         heap    postgres    false            �            1259    17133 !   entregador/estabelecimento_id_seq    SEQUENCE     �   ALTER TABLE public.entregador_estabelecimento ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."entregador/estabelecimento_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    224            �            1259    17118    estabelecimento    TABLE     �   CREATE TABLE public.estabelecimento (
    id integer NOT NULL,
    cnpj text NOT NULL,
    nome text NOT NULL,
    telefone text NOT NULL,
    senha text NOT NULL,
    email text NOT NULL
);
 #   DROP TABLE public.estabelecimento;
       public         heap    postgres    false            �            1259    17117    estabelecimento_id_seq    SEQUENCE     �   ALTER TABLE public.estabelecimento ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.estabelecimento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    17124    item    TABLE     �   CREATE TABLE public.item (
    id integer NOT NULL,
    nome text NOT NULL,
    descricao text NOT NULL,
    id_estabelecimento integer NOT NULL,
    preco numeric NOT NULL
);
    DROP TABLE public.item;
       public         heap    postgres    false            �            1259    17123    item_id_seq    SEQUENCE     �   ALTER TABLE public.item ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    17154    item_pedido    TABLE     �   CREATE TABLE public.item_pedido (
    id integer NOT NULL,
    id_pedido integer NOT NULL,
    id_item integer NOT NULL,
    quantidade integer NOT NULL
);
    DROP TABLE public.item_pedido;
       public         heap    postgres    false            �            1259    17153    item_pedido_id_seq    SEQUENCE     �   ALTER TABLE public.item_pedido ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.item_pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    226            �            1259    17103    pedido    TABLE     �   CREATE TABLE public.pedido (
    status text NOT NULL,
    data date NOT NULL,
    total numeric NOT NULL,
    id integer NOT NULL,
    id_cliente integer NOT NULL,
    id_estabelecimento integer NOT NULL
);
    DROP TABLE public.pedido;
       public         heap    postgres    false            �            1259    17108    pedido_id_seq    SEQUENCE     �   ALTER TABLE public.pedido ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pedido_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217                      0    17087    cliente 
   TABLE DATA           I   COPY public.cliente (nome, senha, email, telefone, id, tipo) FROM stdin;
    public          postgres    false    215   v0                 0    17134    entregador_estabelecimento 
   TABLE DATA           d   COPY public.entregador_estabelecimento (id, id_cliente, id_estabelecimento, disponivel) FROM stdin;
    public          postgres    false    224   �0                 0    17118    estabelecimento 
   TABLE DATA           Q   COPY public.estabelecimento (id, cnpj, nome, telefone, senha, email) FROM stdin;
    public          postgres    false    220   �0                 0    17124    item 
   TABLE DATA           N   COPY public.item (id, nome, descricao, id_estabelecimento, preco) FROM stdin;
    public          postgres    false    222   �0                 0    17154    item_pedido 
   TABLE DATA           I   COPY public.item_pedido (id, id_pedido, id_item, quantidade) FROM stdin;
    public          postgres    false    226   �0                 0    17103    pedido 
   TABLE DATA           Y   COPY public.pedido (status, data, total, id, id_cliente, id_estabelecimento) FROM stdin;
    public          postgres    false    217   1                  0    0    cliente_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cliente_id_seq', 1, false);
          public          postgres    false    216                       0    0 !   entregador/estabelecimento_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public."entregador/estabelecimento_id_seq"', 1, false);
          public          postgres    false    223                        0    0    estabelecimento_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.estabelecimento_id_seq', 1, false);
          public          postgres    false    219            !           0    0    item_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.item_id_seq', 1, false);
          public          postgres    false    221            "           0    0    item_pedido_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.item_pedido_id_seq', 1, false);
          public          postgres    false    225            #           0    0    pedido_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.pedido_id_seq', 1, false);
          public          postgres    false    218            k           2606    17096    cliente cliente_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_pkey;
       public            postgres    false    215            s           2606    17141 :   entregador_estabelecimento entregador/estabelecimento_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.entregador_estabelecimento
    ADD CONSTRAINT "entregador/estabelecimento_pkey" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.entregador_estabelecimento DROP CONSTRAINT "entregador/estabelecimento_pkey";
       public            postgres    false    224            o           2606    17132 $   estabelecimento estabelecimento_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.estabelecimento
    ADD CONSTRAINT estabelecimento_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.estabelecimento DROP CONSTRAINT estabelecimento_pkey;
       public            postgres    false    220            u           2606    17158    item_pedido item_pedido_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.item_pedido
    ADD CONSTRAINT item_pedido_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.item_pedido DROP CONSTRAINT item_pedido_pkey;
       public            postgres    false    226            q           2606    17130    item item_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.item DROP CONSTRAINT item_pkey;
       public            postgres    false    222            m           2606    17110    pedido pedido_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pedido_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.pedido DROP CONSTRAINT pedido_pkey;
       public            postgres    false    217            y           2606    17143 %   entregador_estabelecimento cliente_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.entregador_estabelecimento
    ADD CONSTRAINT cliente_fk FOREIGN KEY (id_cliente) REFERENCES public.cliente(id) NOT VALID;
 O   ALTER TABLE ONLY public.entregador_estabelecimento DROP CONSTRAINT cliente_fk;
       public          postgres    false    224    215    4715            z           2606    17148 -   entregador_estabelecimento estabelecimento_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.entregador_estabelecimento
    ADD CONSTRAINT estabelecimento_fk FOREIGN KEY (id_estabelecimento) REFERENCES public.estabelecimento(id) NOT VALID;
 W   ALTER TABLE ONLY public.entregador_estabelecimento DROP CONSTRAINT estabelecimento_fk;
       public          postgres    false    220    4719    224            v           2606    17169    pedido id_cliente    FK CONSTRAINT     w   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT id_cliente FOREIGN KEY (id) REFERENCES public.cliente(id) NOT VALID;
 ;   ALTER TABLE ONLY public.pedido DROP CONSTRAINT id_cliente;
       public          postgres    false    215    4715    217            w           2606    17174    pedido id_estabelecimento    FK CONSTRAINT     �   ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT id_estabelecimento FOREIGN KEY (id) REFERENCES public.estabelecimento(id) NOT VALID;
 C   ALTER TABLE ONLY public.pedido DROP CONSTRAINT id_estabelecimento;
       public          postgres    false    4719    217    220            x           2606    17179    item id_estabelecimento    FK CONSTRAINT     �   ALTER TABLE ONLY public.item
    ADD CONSTRAINT id_estabelecimento FOREIGN KEY (id) REFERENCES public.estabelecimento(id) NOT VALID;
 A   ALTER TABLE ONLY public.item DROP CONSTRAINT id_estabelecimento;
       public          postgres    false    220    4719    222            {           2606    17164    item_pedido id_item    FK CONSTRAINT     l   ALTER TABLE ONLY public.item_pedido
    ADD CONSTRAINT id_item FOREIGN KEY (id) REFERENCES public.item(id);
 =   ALTER TABLE ONLY public.item_pedido DROP CONSTRAINT id_item;
       public          postgres    false    226    222    4721            |           2606    17159    item_pedido id_pedido    FK CONSTRAINT     p   ALTER TABLE ONLY public.item_pedido
    ADD CONSTRAINT id_pedido FOREIGN KEY (id) REFERENCES public.pedido(id);
 ?   ALTER TABLE ONLY public.item_pedido DROP CONSTRAINT id_pedido;
       public          postgres    false    217    4717    226                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     